.class public final Lcom/chukong/cocosplay/client/c;
.super Ljava/lang/Object;


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x1

    new-array v0, v5, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aput-byte v5, v0, v1

    const/4 v1, 0x4

    aput-byte v1, v0, v3

    aput-byte v3, v0, v4

    const/4 v1, 0x7

    aput-byte v4, v0, v1

    sput-object v0, Lcom/chukong/cocosplay/client/c;->a:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/chukong/cocosplay/client/c;->a:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "57285719"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "DES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/chukong/cocosplay/client/a;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/chukong/cocosplay/client/a;

    invoke-direct {v1}, Lcom/chukong/cocosplay/client/a;-><init>()V

    invoke-static {v0}, Lcom/chukong/cocosplay/client/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/chukong/cocosplay/client/c;->a:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "57285719"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "DES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "DES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
