.class public final Lcom/google/android/gms/internal/zzapd;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/zzaoy;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoz;,
            Lcom/google/android/gms/internal/zzaph;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzaqp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaqp;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapd;->zzh(Lcom/google/android/gms/internal/zzaqp;)Lcom/google/android/gms/internal/zzaoy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoy;->aY()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzaqq;->brK:Lcom/google/android/gms/internal/zzaqq;

    if-eq v0, v2, :cond_34

    new-instance v0, Lcom/google/android/gms/internal/zzaph;

    const-string v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaph;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Lcom/google/android/gms/internal/zzaqs; {:try_start_0 .. :try_end_1f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_26
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_2d

    :catch_1f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaph;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaph;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_26
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaph;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaph;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_34
    return-object v1
.end method

.method public zzh(Lcom/google/android/gms/internal/zzaqp;)Lcom/google/android/gms/internal/zzaoy;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoz;,
            Lcom/google/android/gms/internal/zzaph;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqp;->setLenient(Z)V

    :try_start_8
    invoke-static {p1}, Lcom/google/android/gms/internal/zzapz;->zzh(Lcom/google/android/gms/internal/zzaqp;)Lcom/google/android/gms/internal/zzaoy;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_43
    .catchall {:try_start_8 .. :try_end_b} :catchall_3e

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaqp;->setLenient(Z)V

    return-object v0

    :catch_10
    move-exception v0

    :try_start_11
    new-instance v2, Lcom/google/android/gms/internal/zzapc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzapc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaqp;->setLenient(Z)V

    throw v0

    :catch_43
    move-exception v0

    :try_start_44
    new-instance v2, Lcom/google/android/gms/internal/zzapc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzapc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_71
    .catchall {:try_start_44 .. :try_end_71} :catchall_3e
.end method

.method public zzuq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaph;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapd;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/zzaoy;

    move-result-object v0

    return-object v0
.end method
