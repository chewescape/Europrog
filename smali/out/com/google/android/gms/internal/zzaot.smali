.class public final Lcom/google/android/gms/internal/zzaot;
.super Ljava/lang/Object;


# instance fields
.field private final boc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzapl;",
            ">;"
        }
    .end annotation
.end field

.field private bom:Lcom/google/android/gms/internal/zzapt;

.field private bon:Lcom/google/android/gms/internal/zzapi;

.field private boo:Lcom/google/android/gms/internal/zzaor;

.field private final bop:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzaou",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final boq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzapl;",
            ">;"
        }
    .end annotation
.end field

.field private bor:I

.field private bos:I

.field private bot:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzapt;->boW:Lcom/google/android/gms/internal/zzapt;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaot;->bom:Lcom/google/android/gms/internal/zzapt;

    sget-object v0, Lcom/google/android/gms/internal/zzapi;->box:Lcom/google/android/gms/internal/zzapi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaot;->bon:Lcom/google/android/gms/internal/zzapi;

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bnU:Lcom/google/android/gms/internal/zzaoq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaot;->boo:Lcom/google/android/gms/internal/zzaor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaot;->bop:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaot;->boc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaot;->boq:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/internal/zzaot;->bor:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaot;->bos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaot;->bot:Z

    return-void
.end method

.method private zza(Ljava/lang/String;IILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzapl;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_3c

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/String;)V

    :goto_14
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaqo;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzapj;->zza(Lcom/google/android/gms/internal/zzaqo;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzapl;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaqo;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzapj;->zza(Lcom/google/android/gms/internal/zzaqo;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzapl;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaqo;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzapj;->zza(Lcom/google/android/gms/internal/zzaqo;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzapl;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-void

    :cond_3c
    if-eq p2, v2, :cond_3b

    if-eq p3, v2, :cond_3b

    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzaon;-><init>(II)V

    goto :goto_14
.end method


# virtual methods
.method public aR()Lcom/google/android/gms/internal/zzaot;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaot;->bot:Z

    return-object p0
.end method

.method public aS()Lcom/google/android/gms/internal/zzaos;
    .registers 13

    const/4 v4, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaot;->boc:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaot;->boq:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzaot;->bor:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaot;->bos:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/google/android/gms/internal/zzaot;->zza(Ljava/lang/String;IILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaos;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaot;->bom:Lcom/google/android/gms/internal/zzapt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaot;->boo:Lcom/google/android/gms/internal/zzaor;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaot;->bop:Ljava/util/Map;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzaot;->bot:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/zzaot;->bon:Lcom/google/android/gms/internal/zzapi;

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzaos;-><init>(Lcom/google/android/gms/internal/zzapt;Lcom/google/android/gms/internal/zzaor;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzapi;Ljava/util/List;)V

    return-object v0
.end method

.method public zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaot;
    .registers 5

    instance-of v0, p2, Lcom/google/android/gms/internal/zzapg;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcom/google/android/gms/internal/zzaox;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcom/google/android/gms/internal/zzaou;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcom/google/android/gms/internal/zzapk;

    if-eqz v0, :cond_49

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/google/android/gms/internal/zzapq;->zzbt(Z)V

    instance-of v0, p2, Lcom/google/android/gms/internal/zzaou;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaot;->bop:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    instance-of v0, p2, Lcom/google/android/gms/internal/zzapg;

    if-nez v0, :cond_28

    instance-of v0, p2, Lcom/google/android/gms/internal/zzaox;

    if-eqz v0, :cond_35

    :cond_28
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaqo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaot;->boc:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzapj;->zzb(Lcom/google/android/gms/internal/zzaqo;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzapl;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    instance-of v0, p2, Lcom/google/android/gms/internal/zzapk;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaot;->boc:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaqo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v1

    check-cast p2, Lcom/google/android/gms/internal/zzapk;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzaqn;->zza(Lcom/google/android/gms/internal/zzaqo;Lcom/google/android/gms/internal/zzapk;)Lcom/google/android/gms/internal/zzapl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    return-object p0

    :cond_49
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public varargs zza([Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzaot;
    .registers 7

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_12

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaot;->bom:Lcom/google/android/gms/internal/zzapt;

    invoke-virtual {v3, v2, v4, v4}, Lcom/google/android/gms/internal/zzapt;->zza(Lcom/google/android/gms/internal/zzaoo;ZZ)Lcom/google/android/gms/internal/zzapt;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaot;->bom:Lcom/google/android/gms/internal/zzapt;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    return-object p0
.end method

.method public varargs zzf([I)Lcom/google/android/gms/internal/zzaot;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaot;->bom:Lcom/google/android/gms/internal/zzapt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapt;->zzg([I)Lcom/google/android/gms/internal/zzapt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaot;->bom:Lcom/google/android/gms/internal/zzapt;

    return-object p0
.end method
