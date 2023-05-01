.class public Lcom/idelan/bean/MQTTBean;
.super Ljava/lang/Object;
.source "MQTTBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private keepAlive:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private serverAddr:Ljava/lang/String;

.field private statusTopic:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAlive()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/idelan/bean/MQTTBean;->keepAlive:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/idelan/bean/MQTTBean;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/idelan/bean/MQTTBean;->serverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTopic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/idelan/bean/MQTTBean;->statusTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/idelan/bean/MQTTBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/idelan/bean/MQTTBean;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setKeepAlive(Ljava/lang/String;)V
    .registers 2
    .param p1, "keepAlive"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/idelan/bean/MQTTBean;->keepAlive:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .registers 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/idelan/bean/MQTTBean;->pwd:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setServerAddr(Ljava/lang/String;)V
    .registers 2
    .param p1, "serverAddr"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/idelan/bean/MQTTBean;->serverAddr:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setStatusTopic(Ljava/lang/String;)V
    .registers 2
    .param p1, "statusTopic"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/idelan/bean/MQTTBean;->statusTopic:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/idelan/bean/MQTTBean;->token:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/idelan/bean/MQTTBean;->user:Ljava/lang/String;

    .line 38
    return-void
.end method
