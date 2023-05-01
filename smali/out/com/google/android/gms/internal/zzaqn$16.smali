.class final Lcom/google/android/gms/internal/zzaqn$16;
.super Lcom/google/android/gms/internal/zzapk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapk",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaqn$16;->zza(Lcom/google/android/gms/internal/zzaqr;Ljava/util/Calendar;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaqr;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqr;->bA()Lcom/google/android/gms/internal/zzaqr;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqr;->by()Lcom/google/android/gms/internal/zzaqr;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqr;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzcs(J)Lcom/google/android/gms/internal/zzaqr;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqr;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzcs(J)Lcom/google/android/gms/internal/zzaqr;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqr;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzcs(J)Lcom/google/android/gms/internal/zzaqr;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqr;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzcs(J)Lcom/google/android/gms/internal/zzaqr;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqr;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzcs(J)Lcom/google/android/gms/internal/zzaqr;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqr;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzcs(J)Lcom/google/android/gms/internal/zzaqr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqr;->bz()Lcom/google/android/gms/internal/zzaqr;

    goto :goto_5
.end method

.method public zzab(Lcom/google/android/gms/internal/zzaqp;)Ljava/util/Calendar;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaqq;->brJ:Lcom/google/android/gms/internal/zzaqq;

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextNull()V

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->beginObject()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/internal/zzaqq;->brE:Lcom/google/android/gms/internal/zzaqq;

    if-eq v0, v7, :cond_62

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextInt()I

    move-result v0

    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    move v1, v0

    goto :goto_16

    :cond_30
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    move v2, v0

    goto :goto_16

    :cond_3a
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    move v3, v0

    goto :goto_16

    :cond_44
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    move v4, v0

    goto :goto_16

    :cond_4e
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    move v5, v0

    goto :goto_16

    :cond_58
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    move v6, v0

    goto :goto_16

    :cond_62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->endObject()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_d
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaqn$16;->zzab(Lcom/google/android/gms/internal/zzaqp;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
