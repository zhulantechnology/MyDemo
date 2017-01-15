.class public Lorg/hj201606/lib/utils/HuafeiItude;
.super Ljava/lang/Object;


# instance fields
.field public done:Z

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0"

    iput-object v0, p0, Lorg/hj201606/lib/utils/HuafeiItude;->latitude:Ljava/lang/String;

    const-string v0, "0.0"

    iput-object v0, p0, Lorg/hj201606/lib/utils/HuafeiItude;->longitude:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hj201606/lib/utils/HuafeiItude;->done:Z

    return-void
.end method
