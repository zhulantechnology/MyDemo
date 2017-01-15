.class final La/a/ao$b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/by;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/ao$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()La/a/bx;
    .locals 2

    new-instance v0, La/a/ao$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/ao$a;-><init>(B)V

    return-object v0
.end method
