.class Lcom/google/android/gms/internal/zzapj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final boA:Lcom/google/android/gms/internal/zzapg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapg",
            "<*>;"
        }
    .end annotation
.end field

.field private final boB:Lcom/google/android/gms/internal/zzaox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaox",
            "<*>;"
        }
    .end annotation
.end field

.field private final boF:Lcom/google/android/gms/internal/zzaqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqo",
            "<*>;"
        }
    .end annotation
.end field

.field private final boG:Z

.field private final boH:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaqo;ZLjava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzaqo",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzapg;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzapg;

    :goto_b
    iput-object v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boA:Lcom/google/android/gms/internal/zzapg;

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaox;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/google/android/gms/internal/zzaox;

    :goto_13
    iput-object p1, p0, Lcom/google/android/gms/internal/zzapj$zza;->boB:Lcom/google/android/gms/internal/zzaox;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boA:Lcom/google/android/gms/internal/zzapg;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boB:Lcom/google/android/gms/internal/zzaox;

    if-eqz v0, :cond_2c

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzapq;->zzbt(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapj$zza;->boF:Lcom/google/android/gms/internal/zzaqo;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzapj$zza;->boG:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzapj$zza;->boH:Ljava/lang/Class;

    return-void

    :cond_28
    move-object v0, v1

    goto :goto_b

    :cond_2a
    move-object p1, v1

    goto :goto_13

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaqo;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzapj$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzapj$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaqo;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaos;Lcom/google/android/gms/internal/zzaqo;)Lcom/google/android/gms/internal/zzapk;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaos;",
            "Lcom/google/android/gms/internal/zzaqo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzapk",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boF:Lcom/google/android/gms/internal/zzaqo;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boF:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaqo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boG:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boF:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqo;->bC()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaqo;->bB()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_3a

    new-instance v0, Lcom/google/android/gms/internal/zzapj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapj$zza;->boA:Lcom/google/android/gms/internal/zzapg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapj$zza;->boB:Lcom/google/android/gms/internal/zzaox;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzapj;-><init>(Lcom/google/android/gms/internal/zzapg;Lcom/google/android/gms/internal/zzaox;Lcom/google/android/gms/internal/zzaos;Lcom/google/android/gms/internal/zzaqo;Lcom/google/android/gms/internal/zzapl;Lcom/google/android/gms/internal/zzapj$1;)V

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapj$zza;->boH:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaqo;->bB()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1e

    :cond_3a
    move-object v0, v6

    goto :goto_2c
.end method
