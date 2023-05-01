.class public Lcom/idelan/BasicSDK/BasicSDK;
.super Ljava/lang/Object;
.source "BasicSDK.java"

# interfaces
.implements Lcom/idelan/BasicSDK/BasicSDKEvent;


# static fields
.field private static basicSDK:Lcom/idelan/BasicSDK/BasicSDK;

.field private static deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

.field private static sdkObject:Lcom/idelan/DeLanSDK/DeLanSDK;


# instance fields
.field private isScantimeout:Z

.field private timeOutSecond:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/idelan/BasicSDK/BasicSDK;->basicSDK:Lcom/idelan/BasicSDK/BasicSDK;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/idelan/BasicSDK/BasicSDK;->timeOutSecond:I

    .line 16
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/idelan/BasicSDK/BasicSDK;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 19
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->basicSDK:Lcom/idelan/BasicSDK/BasicSDK;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lcom/idelan/BasicSDK/BasicSDK;

    invoke-direct {v0}, Lcom/idelan/BasicSDK/BasicSDK;-><init>()V

    sput-object v0, Lcom/idelan/BasicSDK/BasicSDK;->basicSDK:Lcom/idelan/BasicSDK/BasicSDK;

    .line 22
    :cond_b
    instance-of v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;

    if-eqz v0, :cond_16

    .line 23
    check-cast p0, Lcom/idelan/DeLanSDK/DeLanSDK;

    .end local p0    # "obj":Ljava/lang/Object;
    sput-object p0, Lcom/idelan/BasicSDK/BasicSDK;->sdkObject:Lcom/idelan/DeLanSDK/DeLanSDK;

    .line 28
    :cond_13
    :goto_13
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->basicSDK:Lcom/idelan/BasicSDK/BasicSDK;

    return-object v0

    .line 25
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    if-eqz v0, :cond_13

    .line 26
    check-cast p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    .end local p0    # "obj":Ljava/lang/Object;
    sput-object p0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    goto :goto_13
.end method


# virtual methods
.method public native bsdk_addShare(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_asyncBindDeviceByKey(II)I
.end method

.method public native bsdk_bindDevice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_checkAppVersion(ILjava/lang/String;)I
.end method

.method public native bsdk_checkDeviceNewVersion(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method public native bsdk_checkUserInfoIntact(I)I
.end method

.method public native bsdk_close(I)I
.end method

.method public native bsdk_commonSend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I
.end method

.method public native bsdk_commonSendUnLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I
.end method

.method public native bsdk_connect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_delShare(ILjava/lang/String;)I
.end method

.method public native bsdk_disconnect(I)I
.end method

.method public native bsdk_free()I
.end method

.method public native bsdk_init(I)I
.end method

.method public native bsdk_link_close(I)I
.end method

.method public native bsdk_link_open(I)I
.end method

.method public native bsdk_link_start(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native bsdk_link_stop(I)I
.end method

.method public native bsdk_login(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_loginWithThird(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_logout(I)I
.end method

.method public native bsdk_modiPhoneNumber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_modiUserInfo(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_modifyDeviceName(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_modifyUserPwd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_networkTest(I)I
.end method

.method public native bsdk_obtainAsyncBindDeviceKey(ILjava/lang/String;)I
.end method

.method public native bsdk_obtainDeviceList(I)I
.end method

.method public native bsdk_obtainImageAuthCode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_obtainMineShare(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_obtainOthersShare(I)I
.end method

.method public native bsdk_obtainSMSAuthCode(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_obtainUserInfo(I)I
.end method

.method public native bsdk_open()I
.end method

.method public native bsdk_queryWeather(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_reActiveByEmail(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_registerUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_resetPasswordByEmail(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_resetPasswordByPhone(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_scan_close(I)I
.end method

.method public native bsdk_scan_open(I)I
.end method

.method public native bsdk_scan_start(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native bsdk_scan_stop(I)I
.end method

.method public native bsdk_send(II[BILjava/lang/String;)I
.end method

.method public native bsdk_setDataCallback(ILjava/lang/String;J)I
.end method

.method public native bsdk_triggerDeviceUpgrade(ILjava/lang/String;)I
.end method

.method public native bsdk_unbindDevice(ILjava/lang/String;)I
.end method

.method public native bsdk_updateMemberAvatar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I
.end method

.method public native bsdk_updateUserAvatar(ILjava/lang/String;[BI)I
.end method

.method public native bsdk_verifySmsCode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public conf_callback(ILjava/lang/String;[BIJ)I
    .registers 8
    .param p1, "sdkfd"    # I
    .param p2, "remoteIP"    # Ljava/lang/String;
    .param p3, "pDatBuf"    # [B
    .param p4, "datLen"    # I
    .param p5, "userData"    # J

    .prologue
    .line 1185
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    if-eqz v0, :cond_9

    .line 1186
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->conf_callback(Ljava/lang/String;[BJ)I

    .line 1188
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public receive_callback(III[BIJ)I
    .registers 9
    .param p1, "sdkfd"    # I
    .param p2, "errCode"    # I
    .param p3, "cmd"    # I
    .param p4, "pDatBuf"    # [B
    .param p5, "datLen"    # I
    .param p6, "userData"    # J

    .prologue
    .line 1094
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->sdkObject:Lcom/idelan/DeLanSDK/DeLanSDK;

    if-eqz v0, :cond_16

    .line 1095
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->sdkObject:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput p2, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 1096
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->sdkObject:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput p3, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 1097
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->sdkObject:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput-object p4, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 1100
    :cond_16
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    if-eqz v0, :cond_2c

    .line 1101
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v0, v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput p2, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 1102
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v0, v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput p3, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 1103
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v0, v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput-object p4, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 1146
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public scan_callback(ILjava/lang/String;[BIJ)I
    .registers 8
    .param p1, "sdkfd"    # I
    .param p2, "remoteIP"    # Ljava/lang/String;
    .param p3, "pDatBuf"    # [B
    .param p4, "datLen"    # I
    .param p5, "userData"    # J

    .prologue
    .line 1153
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    if-eqz v0, :cond_9

    .line 1154
    sget-object v0, Lcom/idelan/BasicSDK/BasicSDK;->deviceObj:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->scan_callback(Ljava/lang/String;[BJ)I

    .line 1169
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public scan_timeoutcallback()V
    .registers 1

    .prologue
    .line 1179
    return-void
.end method
