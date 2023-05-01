.class public Lcom/idelan/app/Util/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/idelan/app/Util/AppManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getAppManager()Lcom/idelan/app/Util/AppManager;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/idelan/app/Util/AppManager;->instance:Lcom/idelan/app/Util/AppManager;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/idelan/app/Util/AppManager;

    invoke-direct {v0}, Lcom/idelan/app/Util/AppManager;-><init>()V

    sput-object v0, Lcom/idelan/app/Util/AppManager;->instance:Lcom/idelan/app/Util/AppManager;

    .line 30
    :cond_b
    sget-object v0, Lcom/idelan/app/Util/AppManager;->instance:Lcom/idelan/app/Util/AppManager;

    return-object v0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Lcom/idelan/app/Util/AppManager;->finishAllActivity()V

    .line 112
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Landroid/app/ActivityManager;

    .line 113
    .local v0, "activityMgr":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1f

    .line 118
    .end local v0    # "activityMgr":Landroid/app/ActivityManager;
    :goto_17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 119
    return-void

    .line 115
    :catch_1f
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_17
.end method

.method public addActivity(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    sget-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    if-nez v2, :cond_b

    .line 38
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    sput-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    .line 40
    :cond_b
    const/4 v1, 0x0

    .line 41
    .local v1, "isHas":Z
    sget-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 45
    if-nez v1, :cond_1f

    .line 46
    sget-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1f
    const-string v2, "**************AppManager**************"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "now activity size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v4, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 41
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 42
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 43
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public currentActivity()Landroid/app/Activity;
    .registers 3

    .prologue
    .line 55
    sget-object v1, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 56
    .local v0, "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public finishActivity()V
    .registers 3

    .prologue
    .line 63
    sget-object v1, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 64
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_e

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    const/4 v0, 0x0

    .line 68
    :cond_e
    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    if-eqz p1, :cond_b

    .line 75
    sget-object v0, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 77
    const/4 p1, 0x0

    .line 79
    :cond_b
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 90
    return-void

    .line 85
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 87
    invoke-virtual {p0, v0}, Lcom/idelan/app/Util/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_6
.end method

.method public finishAllActivity()V
    .registers 4

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-lt v0, v1, :cond_f

    .line 101
    sget-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 102
    return-void

    .line 97
    :cond_f
    sget-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 98
    sget-object v2, Lcom/idelan/app/Util/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 96
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
