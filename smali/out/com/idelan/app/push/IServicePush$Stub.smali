.class public abstract Lcom/idelan/app/push/IServicePush$Stub;
.super Landroid/os/Binder;
.source "IServicePush.java"

# interfaces
.implements Lcom/idelan/app/push/IServicePush;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/push/IServicePush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/push/IServicePush$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.idelan.app.push.IServicePush"

.field static final TRANSACTION_iGetCommonStatus:I = 0x3

.field static final TRANSACTION_iGetPushTokenId:I = 0x5

.field static final TRANSACTION_iIsEanbled:I = 0x2

.field static final TRANSACTION_iSetCommonStatus:I = 0x4

.field static final TRANSACTION_iSetEanbled:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.idelan.app.push.IServicePush"

    invoke-virtual {p0, p0, v0}, Lcom/idelan/app/push/IServicePush$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/idelan/app/push/IServicePush;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.idelan.app.push.IServicePush"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/idelan/app/push/IServicePush;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/idelan/app/push/IServicePush;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/idelan/app/push/IServicePush$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/idelan/app/push/IServicePush$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_6c

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 42
    :sswitch_a
    const-string v3, "com.idelan.app.push.IServicePush"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v3, "com.idelan.app.push.IServicePush"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    move v0, v2

    .line 50
    .local v0, "_arg0":Z
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/idelan/app/push/IServicePush$Stub;->iSetEanbled(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 56
    .end local v0    # "_arg0":Z
    :sswitch_23
    const-string v3, "com.idelan.app.push.IServicePush"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/idelan/app/push/IServicePush$Stub;->iIsEanbled()Z

    move-result v1

    .line 58
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_32

    move v0, v2

    :cond_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 64
    .end local v1    # "_result":Z
    :sswitch_36
    const-string v3, "com.idelan.app.push.IServicePush"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/idelan/app/push/IServicePush$Stub;->iGetCommonStatus()Z

    move-result v1

    .line 66
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v1, :cond_45

    move v0, v2

    :cond_45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v1    # "_result":Z
    :sswitch_49
    const-string v3, "com.idelan.app.push.IServicePush"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    move v0, v2

    .line 75
    .restart local v0    # "_arg0":Z
    :cond_55
    invoke-virtual {p0, v0}, Lcom/idelan/app/push/IServicePush$Stub;->iSetCommonStatus(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Z
    :sswitch_5c
    const-string v3, "com.idelan.app.push.IServicePush"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/idelan/app/push/IServicePush$Stub;->iGetPushTokenId()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 38
    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
