.class public Lcom/idelan/bean/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private dataKey:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private identityNumber:Ljava/lang/String;

.field private imageIcon:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private postcode:Ljava/lang/String;

.field private realName:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;

.field private sex:I

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDataKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->dataKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->identityNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getImageIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->imageIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->postcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/idelan/bean/UserBean;->sex:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/idelan/bean/UserBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->accessToken:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->address:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDataKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "dataKey"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->dataKey:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->email:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->id:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setIdentityNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "identityNumber"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->identityNumber:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setImageIcon(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageIcon"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->imageIcon:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .registers 2
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->mobile:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->name:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .registers 2
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->nickName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->phone:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "postcode"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->postcode:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .registers 2
    .param p1, "realName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->realName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->sessionId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->sessionKey:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setSex(I)V
    .registers 2
    .param p1, "sex"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/idelan/bean/UserBean;->sex:I

    .line 47
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/idelan/bean/UserBean;->state:Ljava/lang/String;

    .line 127
    return-void
.end method
