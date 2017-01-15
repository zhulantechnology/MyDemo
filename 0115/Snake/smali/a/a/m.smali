.class public final enum La/a/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/a/m;

.field public static final enum b:La/a/m;

.field public static final enum c:La/a/m;

.field public static final enum d:La/a/m;

.field private static final synthetic f:[La/a/m;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/a/m;

    const-string v1, "ACCESS_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, La/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/m;->a:La/a/m;

    new-instance v0, La/a/m;

    const-string v1, "ACCESS_TYPE_2G_3G"

    invoke-direct {v0, v1, v3, v3}, La/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/m;->b:La/a/m;

    new-instance v0, La/a/m;

    const-string v1, "ACCESS_TYPE_WIFI"

    invoke-direct {v0, v1, v4, v4}, La/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/m;->c:La/a/m;

    new-instance v0, La/a/m;

    const-string v1, "ACCESS_TYPE_ETHERNET"

    invoke-direct {v0, v1, v5, v5}, La/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/m;->d:La/a/m;

    const/4 v0, 0x4

    new-array v0, v0, [La/a/m;

    sget-object v1, La/a/m;->a:La/a/m;

    aput-object v1, v0, v2

    sget-object v1, La/a/m;->b:La/a/m;

    aput-object v1, v0, v3

    sget-object v1, La/a/m;->c:La/a/m;

    aput-object v1, v0, v4

    sget-object v1, La/a/m;->d:La/a/m;

    aput-object v1, v0, v5

    sput-object v0, La/a/m;->f:[La/a/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, La/a/m;->e:I

    return-void
.end method

.method public static a(I)La/a/m;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, La/a/m;->a:La/a/m;

    goto :goto_0

    :pswitch_1
    sget-object v0, La/a/m;->b:La/a/m;

    goto :goto_0

    :pswitch_2
    sget-object v0, La/a/m;->c:La/a/m;

    goto :goto_0

    :pswitch_3
    sget-object v0, La/a/m;->d:La/a/m;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)La/a/m;
    .locals 1

    const-class v0, La/a/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/m;

    return-object v0
.end method

.method public static values()[La/a/m;
    .locals 1

    sget-object v0, La/a/m;->f:[La/a/m;

    invoke-virtual {v0}, [La/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/m;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/a/m;->e:I

    return v0
.end method
