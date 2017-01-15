.class public Lorg/hj201606/lib/utils/HuafeiLocation;
.super Ljava/lang/Object;


# instance fields
.field public city:Ljava/lang/String;

.field public done:Z

.field public ip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLocation;->city:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLocation;->ip:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hj201606/lib/utils/HuafeiLocation;->done:Z

    return-void
.end method
