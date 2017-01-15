.class public final Lcom/zpay/mmlog/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/security/interfaces/RSAPrivateKey;

.field private static b:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    sget-object v0, Lcom/zpay/mmlog/h;->b:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zpay/mmlog/h;->a:Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/16 v1, 0x400

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    sput-object v0, Lcom/zpay/mmlog/h;->b:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    sput-object v0, Lcom/zpay/mmlog/h;->a:Ljava/security/interfaces/RSAPrivateKey;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 9

    const/16 v7, 0x75

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, p0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    :goto_0
    sub-int v6, v4, v0

    if-gtz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :cond_0
    sub-int v6, v4, v0

    if-le v6, v7, :cond_1

    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v0, 0x75

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :cond_1
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encryptByPublicKey data||publicKey is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zpay/mmlog/h;->a:Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([BLjava/lang/String;)[B
    .locals 11

    const/16 v9, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, [B

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v5, p0

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v2

    :goto_1
    sub-int v7, v5, v3

    move-object v0, v1

    check-cast v0, [B

    if-gtz v7, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sub-int v7, v5, v3

    if-le v7, v9, :cond_2

    const/16 v7, 0x80

    :try_start_3
    invoke-virtual {v4, p0, v3, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    :goto_3
    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {v6, v3, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v2, 0x1

    mul-int/lit16 v2, v0, 0x80

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    sub-int v7, v5, v3

    invoke-virtual {v4, p0, v3, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zpay/mmlog/h;->b:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
