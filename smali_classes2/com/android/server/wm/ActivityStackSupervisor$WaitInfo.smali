.class Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitInfo"
.end annotation


# instance fields
.field private final mResult:Landroid/app/WaitResult;

.field private final mTargetComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    .locals 0
    .param p1, "targetComponent"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/app/WaitResult;

    .line 2780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2781
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 2782
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 2783
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WaitInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mTargetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    invoke-virtual {v0, p1, p2}, Landroid/app/WaitResult;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2802
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 2794
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getResult()Landroid/app/WaitResult;
    .locals 1

    .line 2790
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    return-object v0
.end method

.method public matches(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "targetComponent"    # Landroid/content/ComponentName;

    .line 2786
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
