.class public Lcom/google/android/gms/internal/zzanq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final bkR:Lcom/google/android/gms/internal/zzanq;


# instance fields
.field private final bkS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cR:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzanq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzanq;->bkR:Lcom/google/android/gms/internal/zzanq;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanq;->bkS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static N()Lcom/google/android/gms/internal/zzanq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzanq;->bkR:Lcom/google/android/gms/internal/zzanq;

    return-object v0
.end method

.method public static zza(Landroid/app/Application;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzanq;->bkR:Lcom/google/android/gms/internal/zzanq;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v0, Lcom/google/android/gms/internal/zzanq;->bkR:Lcom/google/android/gms/internal/zzanq;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v0, Lcom/google/android/gms/internal/zzanq;->bkR:Lcom/google/android/gms/internal/zzanq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzanq;->cR:Z

    return-void
.end method


# virtual methods
.method public O()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanq;->bkS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanq;->bkS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v2}, Lcom/google/firebase/FirebaseApp;->zzcr(Z)V

    :cond_d
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanq;->bkS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v2}, Lcom/google/firebase/FirebaseApp;->zzcr(Z)V

    :cond_d
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 5

    const/4 v2, 0x1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanq;->bkS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v2}, Lcom/google/firebase/FirebaseApp;->zzcr(Z)V

    :cond_11
    return-void
.end method
