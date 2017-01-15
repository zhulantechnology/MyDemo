.class public Lorg/hj201606/lib/utils/HuafeiCell;
.super Ljava/lang/Object;


# instance fields
.field public CID:I

.field public LAC:I

.field public MCC:I

.field public MNC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/hj201606/lib/utils/HuafeiCell;->MCC:I

    iput v0, p0, Lorg/hj201606/lib/utils/HuafeiCell;->MNC:I

    iput v0, p0, Lorg/hj201606/lib/utils/HuafeiCell;->LAC:I

    iput v0, p0, Lorg/hj201606/lib/utils/HuafeiCell;->CID:I

    return-void
.end method
