.class public Lcom/google/android/gms/appdatasearch/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcs(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->gD:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->gE:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->weight:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->gF:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->gG:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->gH:[Lcom/google/android/gms/appdatasearch/Feature;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->gI:[I

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->gJ:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appdatasearch/zzi;->zzad(Landroid/os/Parcel;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appdatasearch/zzi;->zzcp(I)[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public zzad(Landroid/os/Parcel;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .registers 15

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcr(Landroid/os/Parcel;)I

    move-result v11

    const/4 v5, 0x1

    move-object v9, v10

    move-object v8, v10

    move-object v7, v10

    move v4, v6

    move-object v3, v10

    move-object v2, v10

    move v1, v6

    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v11, :cond_5a

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgu(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_82

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_e

    :sswitch_23
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :sswitch_28
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :sswitch_2d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_e

    :sswitch_32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_e

    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_e

    :sswitch_3c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    :sswitch_41
    sget-object v8, Lcom/google/android/gms/appdatasearch/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/appdatasearch/Feature;

    move-object v8, v0

    goto :goto_e

    :sswitch_4b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_e

    :sswitch_50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzw(Landroid/os/Parcel;I)[I

    move-result-object v9

    goto :goto_e

    :sswitch_55
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_e

    :cond_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v11, :cond_7b

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_7b
    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/appdatasearch/Feature;[ILjava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_28
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_32
        0x5 -> :sswitch_37
        0x6 -> :sswitch_3c
        0x7 -> :sswitch_41
        0x8 -> :sswitch_50
        0xb -> :sswitch_55
        0x3e8 -> :sswitch_4b
    .end sparse-switch
.end method

.method public zzcp(I)[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    return-object v0
.end method
