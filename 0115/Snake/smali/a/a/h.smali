.class public final La/a/h;
.super La/a/ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/ag;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, La/a/ag;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/ag;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, La/a/ag;->b:J

    invoke-virtual {p0}, La/a/ag;->c()V

    return-void
.end method
