.class final Lcom/google/android/gms/tasks/Tasks$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Tasks$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private final aMS:Lcom/google/android/gms/tasks/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzh",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private aMX:Ljava/lang/Exception;

.field private final aMZ:I

.field private aNa:I

.field private aNb:I

.field private final zzako:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/zzh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/zzh",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzako:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMZ:I

    iput-object p2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMS:Lcom/google/android/gms/tasks/zzh;

    return-void
.end method

.method private zzclj()V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aNa:I

    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aNb:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMZ:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMX:Ljava/lang/Exception;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMS:Lcom/google/android/gms/tasks/zzh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzh;->setResult(Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMS:Lcom/google/android/gms/tasks/zzh;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aNb:I

    iget v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMZ:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " out of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " underlying tasks failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMX:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_13
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aNb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aNb:I

    iput-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aMX:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzclj()V

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aNa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->aNa:I

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzclj()V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
