.class public Lorg/zzf/core/m;
.super Ljava/lang/Object;


# static fields
.field private static b:Lorg/zzf/core/m;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zzf/core/m;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lorg/zzf/core/m;
    .locals 1

    sget-object v0, Lorg/zzf/core/m;->b:Lorg/zzf/core/m;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/m;

    invoke-direct {v0}, Lorg/zzf/core/m;-><init>()V

    sput-object v0, Lorg/zzf/core/m;->b:Lorg/zzf/core/m;

    :cond_0
    sget-object v0, Lorg/zzf/core/m;->b:Lorg/zzf/core/m;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/StringReader;
    .locals 3

    :try_start_0
    const-string v0, "<display>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "</display>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<display>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "<display>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "</display>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/ui/FeeView;->e:Ljava/lang/String;

    new-instance v0, Ljava/io/StringReader;

    const/4 v1, 0x0

    const-string v2, "<display>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
