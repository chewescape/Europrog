.class public final Lcom/google/android/gms/internal/zzasd;
.super Ljava/lang/Object;


# static fields
.field public static final btR:[I

.field public static final btS:[J

.field public static final btT:[F

.field public static final btU:[D

.field public static final btV:[Z

.field public static final btW:[Ljava/lang/String;

.field public static final btX:[[B

.field public static final btY:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btR:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btS:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btT:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btU:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btV:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btW:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btX:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzasd;->btY:[B

    return-void
.end method

.method static zzahk(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzahl(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static zzak(II)I
    .registers 3

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzars;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzars;->zzagr(I)Z

    move-result v0

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzars;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzars;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzars;->zzagr(I)Z

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v2

    if-ne v2, p1, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzars;->zzagr(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzars;->zzagv(I)V

    return v0
.end method
