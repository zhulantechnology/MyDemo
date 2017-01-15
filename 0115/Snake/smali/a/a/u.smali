.class public final enum La/a/u;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/a/u;

.field public static final enum b:La/a/u;

.field private static final synthetic d:[La/a/u;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, La/a/u;

    const-string v1, "LEGIT"

    invoke-direct {v0, v1, v3, v2}, La/a/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/u;->a:La/a/u;

    new-instance v0, La/a/u;

    const-string v1, "ALIEN"

    invoke-direct {v0, v1, v2, v4}, La/a/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/u;->b:La/a/u;

    new-array v0, v4, [La/a/u;

    sget-object v1, La/a/u;->a:La/a/u;

    aput-object v1, v0, v3

    sget-object v1, La/a/u;->b:La/a/u;

    aput-object v1, v0, v2

    sput-object v0, La/a/u;->d:[La/a/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, La/a/u;->c:I

    return-void
.end method

.method public static a(I)La/a/u;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, La/a/u;->a:La/a/u;

    goto :goto_0

    :pswitch_1
    sget-object v0, La/a/u;->b:La/a/u;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)La/a/u;
    .locals 1

    const-class v0, La/a/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/u;

    return-object v0
.end method

.method public static values()[La/a/u;
    .locals 1

    sget-object v0, La/a/u;->d:[La/a/u;

    invoke-virtual {v0}, [La/a/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/u;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/a/u;->c:I

    return v0
.end method
