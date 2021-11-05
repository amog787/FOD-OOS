.class Lcom/android/server/vr/VrManagerService$VrState;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VrState"
.end annotation


# instance fields
.field final callingPackage:Landroid/content/ComponentName;

.field final defaultPermissionsGranted:Z

.field final enabled:Z

.field final processId:I

.field final running2dInVr:Z

.field final targetPackageName:Landroid/content/ComponentName;

.field final timestamp:J

.field final userId:I


# direct methods
.method constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "running2dInVr"    # Z
    .param p3, "targetPackageName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "processId"    # I
    .param p6, "callingPackage"    # Landroid/content/ComponentName;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 379
    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 380
    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 381
    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 382
    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 383
    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    .line 386
    return-void
.end method

.method constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "running2dInVr"    # Z
    .param p3, "targetPackageName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "processId"    # I
    .param p6, "callingPackage"    # Landroid/content/ComponentName;
    .param p7, "defaultPermissionsGranted"    # Z

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 391
    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 392
    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 393
    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 394
    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 395
    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 396
    iput-boolean p7, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    .line 398
    return-void
.end method


# virtual methods
.method public toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .line 402
    const-string v0, "  "

    .line 403
    .local v0, "tab":Ljava/lang/String;
    const-string v1, "\n"

    .line 404
    .local v1, "newLine":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v3, "State changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v3, :cond_0

    const-string v3, "ENABLED"

    goto :goto_0

    :cond_0
    const-string v3, "DISABLED"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v3, :cond_3

    .line 411
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v3, "User="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v3, "Current VR Activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    const-string v4, "None"

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v3, "Bound VrListenerService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    goto :goto_2

    .line 422
    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 421
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    if-eqz v3, :cond_3

    .line 425
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v3, "Default permissions granted to the bound VrListenerService."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
