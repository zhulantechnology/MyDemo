.class public Lorg/zzf/core/f/b;
.super Ljava/lang/Object;


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x100

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/zzf/core/f/b;->a:[C

    new-array v0, v3, [B

    sput-object v0, Lorg/zzf/core/f/b;->b:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lorg/zzf/core/f/b;->b:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lorg/zzf/core/f/b;->b:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/zzf/core/f/b;->b:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    sget-object v1, Lorg/zzf/core/f/b;->b:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lorg/zzf/core/f/b;->b:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    sget-object v0, Lorg/zzf/core/f/b;->b:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void
.end method

.method public static a([C)[B
    .locals 8

    const/16 v7, 0xff

    const/4 v1, 0x0

    array-length v0, p0

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    aget-char v3, p0, v0

    if-gt v3, v7, :cond_0

    sget-object v3, Lorg/zzf/core/f/b;->b:[B

    aget-char v4, p0, v0

    aget-byte v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v2, 0x4

    mul-int/lit8 v0, v0, 0x3

    rem-int/lit8 v3, v2, 0x4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x2

    :cond_3
    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_7

    aget-char v4, p0, v3

    if-le v4, v7, :cond_6

    const/4 v4, -0x1

    :goto_2
    if-ltz v4, :cond_5

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v4

    const/16 v4, 0x8

    if-lt v1, v4, :cond_5

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v4, v2, 0x1

    shr-int v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    move v2, v4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    sget-object v4, Lorg/zzf/core/f/b;->b:[B

    aget-char v6, p0, v3

    aget-byte v4, v4, v6

    goto :goto_2

    :cond_7
    array-length v0, v5

    if-eq v2, v0, :cond_8

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Miscalculated data length (wrote "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object v5
.end method
