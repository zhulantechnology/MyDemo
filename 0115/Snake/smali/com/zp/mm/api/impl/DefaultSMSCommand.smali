.class public Lcom/zp/mm/api/impl/DefaultSMSCommand;
.super Lcom/zp/mm/api/impl/MultiCommand;

# interfaces
.implements Lcom/zp/mm/api/SMSCommand;


# instance fields
.field private final dataPort:S

.field protected failedCommand:Lcom/zp/mm/api/Command;

.field private final isData:Z

.field private final msg:Ljava/lang/String;

.field private final mustSend:Z

.field private final sp:Ljava/lang/String;

.field protected successCommand:Lcom/zp/mm/api/Command;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;ZSZ[Lcom/zp/mm/api/Command;)V
    .locals 0

    invoke-direct {p0, p6}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->sp:Ljava/lang/String;

    iput-object p2, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->isData:Z

    iput-boolean p5, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->mustSend:Z

    iput-short p4, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->dataPort:S

    return-void
.end method


# virtual methods
.method public getDataMsg()[B
    .locals 2

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDataPort()S
    .locals 1

    iget-short v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->dataPort:S

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public isData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->isData:Z

    return v0
.end method

.method public isMustSend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->mustSend:Z

    return v0
.end method

.method public requestSendMessage(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->isData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getDataMsg()[B

    move-result-object v4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getSp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getDataPort()S

    move-result v3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getSp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getMsg()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendMessageFailed()V
    .locals 1

    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->failedCommand:Lcom/zp/mm/api/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->failedCommand:Lcom/zp/mm/api/Command;

    invoke-interface {v0}, Lcom/zp/mm/api/Command;->executeCommand()V

    :cond_0
    return-void
.end method

.method public sendMessageSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->successCommand:Lcom/zp/mm/api/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->successCommand:Lcom/zp/mm/api/Command;

    invoke-interface {v0}, Lcom/zp/mm/api/Command;->executeCommand()V

    :cond_0
    return-void
.end method

.method final setFailedCommand(Lcom/zp/mm/api/Command;)V
    .locals 0

    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->failedCommand:Lcom/zp/mm/api/Command;

    return-void
.end method

.method final setSuccessCommand(Lcom/zp/mm/api/Command;)V
    .locals 0

    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->successCommand:Lcom/zp/mm/api/Command;

    return-void
.end method
