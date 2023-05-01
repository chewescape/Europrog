.class Lcom/google/android/gms/internal/zzapt$1;
.super Lcom/google/android/gms/internal/zzapk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapt;->zza(Lcom/google/android/gms/internal/zzaos;Lcom/google/android/gms/internal/zzaqo;)Lcom/google/android/gms/internal/zzapk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapk",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private bol:Lcom/google/android/gms/internal/zzapk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapk",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic bpc:Z

.field final synthetic bpd:Z

.field final synthetic bpe:Lcom/google/android/gms/internal/zzaos;

.field final synthetic bpf:Lcom/google/android/gms/internal/zzaqo;

.field final synthetic bpg:Lcom/google/android/gms/internal/zzapt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapt;ZZLcom/google/android/gms/internal/zzaos;Lcom/google/android/gms/internal/zzaqo;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapt$1;->bpg:Lcom/google/android/gms/internal/zzapt;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzapt$1;->bpc:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzapt$1;->bpd:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzapt$1;->bpe:Lcom/google/android/gms/internal/zzaos;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzapt$1;->bpf:Lcom/google/android/gms/internal/zzaqo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapk;-><init>()V

    return-void
.end method

.method private bg()Lcom/google/android/gms/internal/zzapk;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzapk",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapt$1;->bol:Lcom/google/android/gms/internal/zzapk;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapt$1;->bpe:Lcom/google/android/gms/internal/zzaos;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapt$1;->bpg:Lcom/google/android/gms/internal/zzapt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapt$1;->bpf:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaos;->zza(Lcom/google/android/gms/internal/zzapl;Lcom/google/android/gms/internal/zzaqo;)Lcom/google/android/gms/internal/zzapk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapt$1;->bol:Lcom/google/android/gms/internal/zzapk;

    goto :goto_4
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaqr;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapt$1;->bpd:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqr;->bA()Lcom/google/android/gms/internal/zzaqr;

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapt$1;->bg()Lcom/google/android/gms/internal/zzapk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzapk;->zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaqp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapt$1;->bpc:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->skipValue()V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapt$1;->bg()Lcom/google/android/gms/internal/zzapk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapk;->zzb(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method
