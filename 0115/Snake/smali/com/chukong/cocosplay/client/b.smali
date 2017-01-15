.class public final Lcom/chukong/cocosplay/client/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/chukong/cocosplay/client/b;->d:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lcom/chukong/cocosplay/client/b;->e:I

    const/4 v0, 0x1

    sput v0, Lcom/chukong/cocosplay/client/b;->f:I

    return-void
.end method
