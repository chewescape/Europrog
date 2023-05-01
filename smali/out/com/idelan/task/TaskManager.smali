.class public Lcom/idelan/task/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field public static DELETE_BITMAP_CACHE_PRIORITY:I

.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/idelan/task/TaskManager;

.field public static final syncKey:[B


# instance fields
.field private priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "TaskManager"

    sput-object v0, Lcom/idelan/task/TaskManager;->TAG:Ljava/lang/String;

    .line 16
    const v0, 0x7fffffff

    sput v0, Lcom/idelan/task/TaskManager;->DELETE_BITMAP_CACHE_PRIORITY:I

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/idelan/task/TaskManager;->syncKey:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/idelan/task/TaskManager;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 44
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/idelan/task/TaskManager;->priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 45
    new-instance v1, Lcom/idelan/task/MipuThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0xf

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    iget-object v7, p0, Lcom/idelan/task/TaskManager;->priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v1 .. v7}, Lcom/idelan/task/MipuThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 45
    iput-object v1, p0, Lcom/idelan/task/TaskManager;->service:Ljava/util/concurrent/ExecutorService;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/idelan/task/TaskManager;
    .registers 2

    .prologue
    .line 33
    sget-object v1, Lcom/idelan/task/TaskManager;->syncKey:[B

    monitor-enter v1

    .line 34
    :try_start_3
    sget-object v0, Lcom/idelan/task/TaskManager;->instance:Lcom/idelan/task/TaskManager;

    if-nez v0, :cond_e

    .line 35
    new-instance v0, Lcom/idelan/task/TaskManager;

    invoke-direct {v0}, Lcom/idelan/task/TaskManager;-><init>()V

    sput-object v0, Lcom/idelan/task/TaskManager;->instance:Lcom/idelan/task/TaskManager;

    .line 33
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 39
    sget-object v0, Lcom/idelan/task/TaskManager;->instance:Lcom/idelan/task/TaskManager;

    return-object v0

    .line 33
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public showResult()V
    .registers 4

    .prologue
    .line 59
    sget-object v0, Lcom/idelan/task/TaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queue = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idelan/task/TaskManager;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/idelan/task/TaskManager;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 64
    return-void
.end method

.method public submit(Lcom/idelan/task/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/idelan/task/Task;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/idelan/task/TaskManager;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
