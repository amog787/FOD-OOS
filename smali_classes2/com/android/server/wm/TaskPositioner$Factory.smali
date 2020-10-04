.class interface abstract Lcom/android/server/wm/TaskPositioner$Factory;
.super Ljava/lang/Object;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation


# virtual methods
.method public create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 678
    new-instance v0, Lcom/android/server/wm/TaskPositioner;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method
