.class public abstract Lcom/google/firebase/appindexing/internal/zzf$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/firebase/appindexing/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/appindexing/internal/zzf$zza$zza;
    }
.end annotation


# direct methods
.method public static zzlz(Landroid/os/IBinder;)Lcom/google/firebase/appindexing/internal/zzf;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.firebase.appindexing.internal.IAppIndexingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/firebase/appindexing/internal/zzf;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/firebase/appindexing/internal/zzf;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/firebase/appindexing/internal/zzf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/firebase/appindexing/internal/zzf$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_80

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v0, "com.google.firebase.appindexing.internal.IAppIndexingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_10
    const-string v0, "com.google.firebase.appindexing.internal.IAppIndexingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl$zza;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrl;

    move-result-object v2

    sget-object v0, Lcom/google/firebase/appindexing/internal/Thing;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/appindexing/internal/Thing;

    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/appindexing/internal/zzf$zza;->zza(Lcom/google/android/gms/internal/zzrl;[Lcom/google/firebase/appindexing/internal/Thing;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :sswitch_2d
    const-string v0, "com.google.firebase.appindexing.internal.IAppIndexingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl$zza;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrl;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/appindexing/internal/zzf$zza;->zza(Lcom/google/android/gms/internal/zzrl;[Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :sswitch_46
    const-string v0, "com.google.firebase.appindexing.internal.IAppIndexingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl$zza;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/appindexing/internal/zzf$zza;->zze(Lcom/google/android/gms/internal/zzrl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :sswitch_5b
    const-string v0, "com.google.firebase.appindexing.internal.IAppIndexingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl$zza;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrl;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/google/firebase/appindexing/internal/UpdateTagsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appindexing/internal/UpdateTagsRequest;

    :goto_76
    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/appindexing/internal/zzf$zza;->zza(Lcom/google/android/gms/internal/zzrl;Lcom/google/firebase/appindexing/internal/UpdateTagsRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :cond_7e
    const/4 v0, 0x0

    goto :goto_76

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
