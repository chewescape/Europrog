.class Lcom/google/android/gms/internal/zzaps$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaps;->zzb(Lcom/google/android/gms/internal/zzaqo;)Lcom/google/android/gms/internal/zzapx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzapx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic boP:Lcom/google/android/gms/internal/zzaou;

.field final synthetic boQ:Ljava/lang/reflect/Type;

.field final synthetic boR:Lcom/google/android/gms/internal/zzaps;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaps;Lcom/google/android/gms/internal/zzaou;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaps$1;->boR:Lcom/google/android/gms/internal/zzaps;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaps$1;->boP:Lcom/google/android/gms/internal/zzaou;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaps$1;->boQ:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bj()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps$1;->boP:Lcom/google/android/gms/internal/zzaou;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps$1;->boQ:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaou;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
