.class public abstract Lcom/google/android/gms/internal/zzry;
.super Ljava/lang/Object;


# static fields
.field private static final AF:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/zzsw;

    const-string v0, "GAC_Transform"

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/zzsw;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/android/gms/internal/zzry;->AF:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zzatf()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzry;->AF:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
