.class public Lorg/zzf/core/d/ae;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Ljava/lang/String;

.field public static P:Ljava/lang/String;

.field public static Q:Ljava/lang/String;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/zzf/core/a/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ae;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zpayinit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ae;->b:Ljava/lang/String;

    sget-object v0, Lorg/zzf/core/d/ae;->a:Ljava/lang/String;

    sput-object v0, Lorg/zzf/core/d/ae;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zpayResultState?channelId=%s&orderId=%s&imei=%s&imsi=%s&state=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ae;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sp/ltpayResultState?orderId=%s&state=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ae;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zpayEntrancePayment?channelId=%s&priciePointId=%s&money=%s&cpparam=%s&appId=%s&qd=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ae;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sp/zzfPay.e?channelId=%s&priciePointId=%s&money=%s&cpparam=%s&appId=%s&qd=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ae;->g:Ljava/lang/String;

    sput-boolean v2, Lorg/zzf/core/d/ae;->h:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->i:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->j:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->k:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->l:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->m:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->n:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->o:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->p:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->q:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->r:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->s:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->t:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->u:Z

    sput-boolean v2, Lorg/zzf/core/d/ae;->v:Z

    const-string v0, "fingerprint"

    sput-object v0, Lorg/zzf/core/d/ae;->w:Ljava/lang/String;

    const-string v0, "diaplayResolution"

    sput-object v0, Lorg/zzf/core/d/ae;->x:Ljava/lang/String;

    const-string v0, "device"

    sput-object v0, Lorg/zzf/core/d/ae;->y:Ljava/lang/String;

    const-string v0, "cpu_api"

    sput-object v0, Lorg/zzf/core/d/ae;->z:Ljava/lang/String;

    const-string v0, "brand"

    sput-object v0, Lorg/zzf/core/d/ae;->A:Ljava/lang/String;

    const-string v0, "bootloader"

    sput-object v0, Lorg/zzf/core/d/ae;->B:Ljava/lang/String;

    const-string v0, "board"

    sput-object v0, Lorg/zzf/core/d/ae;->C:Ljava/lang/String;

    const-string v0, "hardware"

    sput-object v0, Lorg/zzf/core/d/ae;->D:Ljava/lang/String;

    const-string v0, "host"

    sput-object v0, Lorg/zzf/core/d/ae;->E:Ljava/lang/String;

    const-string v0, "id"

    sput-object v0, Lorg/zzf/core/d/ae;->F:Ljava/lang/String;

    const-string v0, "mac"

    sput-object v0, Lorg/zzf/core/d/ae;->G:Ljava/lang/String;

    const-string v0, "MaxCpuFreq"

    sput-object v0, Lorg/zzf/core/d/ae;->H:Ljava/lang/String;

    const-string v0, "CurCpuFreq"

    sput-object v0, Lorg/zzf/core/d/ae;->I:Ljava/lang/String;

    const-string v0, "MinCpuFreq"

    sput-object v0, Lorg/zzf/core/d/ae;->J:Ljava/lang/String;

    const-string v0, "CpuName"

    sput-object v0, Lorg/zzf/core/d/ae;->K:Ljava/lang/String;

    const-string v0, "MEM_UNUSED"

    sput-object v0, Lorg/zzf/core/d/ae;->L:Ljava/lang/String;

    const-string v0, "MEM_TOLAL"

    sput-object v0, Lorg/zzf/core/d/ae;->M:Ljava/lang/String;

    const-string v0, "SD_TOTAL"

    sput-object v0, Lorg/zzf/core/d/ae;->N:Ljava/lang/String;

    const-string v0, "SD_CUR"

    sput-object v0, Lorg/zzf/core/d/ae;->O:Ljava/lang/String;

    const-string v0, "iccid"

    sput-object v0, Lorg/zzf/core/d/ae;->P:Ljava/lang/String;

    const-string v0, "phonecompany"

    sput-object v0, Lorg/zzf/core/d/ae;->Q:Ljava/lang/String;

    return-void
.end method
