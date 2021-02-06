.class public Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityDisplayListener"
.end annotation


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplaysList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUiUid:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 3161
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 3159
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    .line 3162
    const-string v0, "display"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3163
    invoke-virtual {v0, p0, p3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 3164
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->initializeDisplayList()V

    .line 3166
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3167
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3168
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    if-eqz v0, :cond_0

    .line 3169
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x100000

    .line 3170
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 3169
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    .line 3172
    :cond_0
    return-void
.end method

.method private initializeDisplayList()V
    .locals 5

    .line 3181
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 3182
    .local v0, "displays":[Landroid/view/Display;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3188
    aget-object v3, v0, v2

    .line 3189
    .local v3, "display":Landroid/view/Display;
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->isValidDisplay(Landroid/view/Display;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3190
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3184
    .end local v3    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3193
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    .line 3194
    return-void

    .line 3193
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isValidDisplay(Landroid/view/Display;)Z
    .locals 4
    .param p1, "display"    # Landroid/view/Display;

    .line 3262
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3271
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 3272
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3273
    invoke-virtual {p1}, Landroid/view/Display;->getOwnerUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    if-eq v1, v2, :cond_1

    .line 3274
    return v0

    .line 3276
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 3263
    :cond_2
    :goto_0
    return v0
.end method

.method private removeDisplayFromList(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 3247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3248
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3249
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3250
    const/4 v1, 0x1

    return v1

    .line 3247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3253
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getValidDisplayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    .line 3175
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 3177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayAdded(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 3198
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 3199
    .local v0, "display":Landroid/view/Display;
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->isValidDisplay(Landroid/view/Display;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3200
    return-void

    .line 3203
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3204
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3205
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3206
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDisplayChanged()V

    .line 3208
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 3209
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-eqz p1, :cond_2

    .line 3210
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3211
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3212
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3213
    .local v5, "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onDisplayAdded(I)V

    .line 3211
    .end local v5    # "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3216
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v4    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3217
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3218
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    monitor-exit v1

    .line 3219
    return-void

    .line 3218
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 3259
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 5
    .param p1, "displayId"    # I

    .line 3223
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3224
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->removeDisplayFromList(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3225
    monitor-exit v0

    return-void

    .line 3227
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3228
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDisplayChanged()V

    .line 3230
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 3231
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-eqz p1, :cond_2

    .line 3232
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3233
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3234
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3235
    .local v4, "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onDisplayRemoved(I)V

    .line 3233
    .end local v4    # "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3238
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3239
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->onDisplayRemoved(I)V

    .line 3242
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingWindows(I)V

    .line 3243
    return-void

    .line 3238
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
