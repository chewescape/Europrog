.class public abstract Lcom/google/firebase/appindexing/FirebaseAppIndex;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_UPDATE_INDEX:Ljava/lang/String; = "com.google.firebase.appindexing.UPDATE_INDEX"

.field public static final APP_INDEXING_API_TAG:Ljava/lang/String; = "FirebaseAppIndex"

.field private static aWu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/firebase/appindexing/FirebaseAppIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/appindexing/FirebaseAppIndex;
    .registers 3

    const-class v1, Lcom/google/firebase/appindexing/FirebaseAppIndex;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/firebase/appindexing/FirebaseAppIndex;->aWu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_20

    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/firebase/appindexing/internal/zzc;

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/firebase/appindexing/internal/zzc;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/google/firebase/appindexing/FirebaseAppIndex;->aWu:Ljava/lang/ref/WeakReference;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_29

    :cond_1e
    monitor-exit v1

    return-object v0

    :cond_20
    :try_start_20
    sget-object v0, Lcom/google/firebase/appindexing/FirebaseAppIndex;->aWu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appindexing/FirebaseAppIndex;
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_29

    goto :goto_8

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs abstract remove([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAll()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract update([Lcom/google/firebase/appindexing/Indexable;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/firebase/appindexing/Indexable;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
