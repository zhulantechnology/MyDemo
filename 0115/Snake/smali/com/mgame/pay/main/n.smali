.class public Lcom/mgame/pay/main/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mgame/pay/main/n;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(B)Ljava/lang/String;
    .locals 4

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    div-int/lit8 v0, p0, 0x10

    rem-int/lit8 v1, p0, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mgame/pay/main/n;->a:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/mgame/pay/main/n;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/mgame/pay/main/n;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const/16 v0, 0x3e

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "b"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "c"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "d"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "e"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "f"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const-string v1, "g"

    aput-object v1, v5, v0

    const/4 v0, 0x7

    const-string v1, "h"

    aput-object v1, v5, v0

    const/16 v0, 0x8

    const-string v1, "i"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    const-string v1, "j"

    aput-object v1, v5, v0

    const/16 v0, 0xa

    const-string v1, "k"

    aput-object v1, v5, v0

    const/16 v0, 0xb

    const-string v1, "l"

    aput-object v1, v5, v0

    const/16 v0, 0xc

    const-string v1, "m"

    aput-object v1, v5, v0

    const/16 v0, 0xd

    const-string v1, "n"

    aput-object v1, v5, v0

    const/16 v0, 0xe

    const-string v1, "o"

    aput-object v1, v5, v0

    const/16 v0, 0xf

    const-string v1, "p"

    aput-object v1, v5, v0

    const/16 v0, 0x10

    const-string v1, "q"

    aput-object v1, v5, v0

    const/16 v0, 0x11

    const-string v1, "r"

    aput-object v1, v5, v0

    const/16 v0, 0x12

    const-string v1, "s"

    aput-object v1, v5, v0

    const/16 v0, 0x13

    const-string v1, "t"

    aput-object v1, v5, v0

    const/16 v0, 0x14

    const-string v1, "u"

    aput-object v1, v5, v0

    const/16 v0, 0x15

    const-string v1, "v"

    aput-object v1, v5, v0

    const/16 v0, 0x16

    const-string v1, "w"

    aput-object v1, v5, v0

    const/16 v0, 0x17

    const-string v1, "x"

    aput-object v1, v5, v0

    const/16 v0, 0x18

    const-string v1, "y"

    aput-object v1, v5, v0

    const/16 v0, 0x19

    const-string v1, "z"

    aput-object v1, v5, v0

    const/16 v0, 0x1a

    const-string v1, "0"

    aput-object v1, v5, v0

    const/16 v0, 0x1b

    const-string v1, "1"

    aput-object v1, v5, v0

    const/16 v0, 0x1c

    const-string v1, "2"

    aput-object v1, v5, v0

    const/16 v0, 0x1d

    const-string v1, "3"

    aput-object v1, v5, v0

    const/16 v0, 0x1e

    const-string v1, "4"

    aput-object v1, v5, v0

    const/16 v0, 0x1f

    const-string v1, "5"

    aput-object v1, v5, v0

    const/16 v0, 0x20

    const-string v1, "6"

    aput-object v1, v5, v0

    const/16 v0, 0x21

    const-string v1, "7"

    aput-object v1, v5, v0

    const/16 v0, 0x22

    const-string v1, "8"

    aput-object v1, v5, v0

    const/16 v0, 0x23

    const-string v1, "9"

    aput-object v1, v5, v0

    const/16 v0, 0x24

    const-string v1, "A"

    aput-object v1, v5, v0

    const/16 v0, 0x25

    const-string v1, "B"

    aput-object v1, v5, v0

    const/16 v0, 0x26

    const-string v1, "C"

    aput-object v1, v5, v0

    const/16 v0, 0x27

    const-string v1, "D"

    aput-object v1, v5, v0

    const/16 v0, 0x28

    const-string v1, "E"

    aput-object v1, v5, v0

    const/16 v0, 0x29

    const-string v1, "F"

    aput-object v1, v5, v0

    const/16 v0, 0x2a

    const-string v1, "G"

    aput-object v1, v5, v0

    const/16 v0, 0x2b

    const-string v1, "H"

    aput-object v1, v5, v0

    const/16 v0, 0x2c

    const-string v1, "I"

    aput-object v1, v5, v0

    const/16 v0, 0x2d

    const-string v1, "J"

    aput-object v1, v5, v0

    const/16 v0, 0x2e

    const-string v1, "K"

    aput-object v1, v5, v0

    const/16 v0, 0x2f

    const-string v1, "L"

    aput-object v1, v5, v0

    const/16 v0, 0x30

    const-string v1, "M"

    aput-object v1, v5, v0

    const/16 v0, 0x31

    const-string v1, "N"

    aput-object v1, v5, v0

    const/16 v0, 0x32

    const-string v1, "O"

    aput-object v1, v5, v0

    const/16 v0, 0x33

    const-string v1, "P"

    aput-object v1, v5, v0

    const/16 v0, 0x34

    const-string v1, "Q"

    aput-object v1, v5, v0

    const/16 v0, 0x35

    const-string v1, "R"

    aput-object v1, v5, v0

    const/16 v0, 0x36

    const-string v1, "S"

    aput-object v1, v5, v0

    const/16 v0, 0x37

    const-string v1, "T"

    aput-object v1, v5, v0

    const/16 v0, 0x38

    const-string v1, "U"

    aput-object v1, v5, v0

    const/16 v0, 0x39

    const-string v1, "V"

    aput-object v1, v5, v0

    const/16 v0, 0x3a

    const-string v1, "W"

    aput-object v1, v5, v0

    const/16 v0, 0x3b

    const-string v1, "X"

    aput-object v1, v5, v0

    const/16 v0, 0x3c

    const-string v1, "Y"

    aput-object v1, v5, v0

    const/16 v0, 0x3d

    const-string v1, "Z"

    aput-object v1, v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tpbilling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgame/pay/main/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v7, v0, 0x8

    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v7, :cond_1

    add-int/lit8 v0, v4, 0x1

    mul-int/lit8 v1, v4, 0x8

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3FFFFFFF"

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    and-long/2addr v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    :goto_1
    const/4 v9, 0x6

    if-ge v0, v9, :cond_0

    const-string v9, "0000003D"

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    and-long/2addr v10, v2

    long-to-int v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v9, v5, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x5

    shr-long/2addr v2, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aput-object v1, v8, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mgame/pay/main/n;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
