.class public final Lcom/google/firebase/appindexing/internal/zzd;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# direct methods
.method public static zzafb(I)Z
    .registers 2

    const/16 v0, 0x44c0

    if-lt p0, v0, :cond_a

    const/16 v0, 0x44f1

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
