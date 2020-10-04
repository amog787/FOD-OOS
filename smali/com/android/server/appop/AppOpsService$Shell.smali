.class Lcom/android/server/appop/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# static fields
.field static final sBinder:Landroid/os/Binder;


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/appop/AppOpsService;

.field mToken:Landroid/os/IBinder;

.field mode:I

.field modeStr:Ljava/lang/String;

.field nonpackageUid:I

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field targetsUid:Z

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3327
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .locals 2
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/appop/AppOpsService;

    .line 3331
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 3319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3332
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 3333
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 3335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    sget-object v1, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3337
    goto :goto_0

    .line 3336
    :catch_0
    move-exception v0

    .line 3338
    :goto_0
    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 3315
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 2
    .param p0, "modeStr"    # Ljava/lang/String;
    .param p1, "err"    # Ljava/io/PrintWriter;

    .line 3369
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3370
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3371
    return v0

    .line 3369
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3375
    .end local v0    # "i":I
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3376
    :catch_0
    move-exception v0

    .line 3378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    const/4 v0, -0x1

    return v0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3
    .param p0, "op"    # Ljava/lang/String;
    .param p1, "err"    # Ljava/io/PrintWriter;

    .line 3353
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3354
    :catch_0
    move-exception v0

    .line 3357
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 3358
    :catch_1
    move-exception v0

    .line 3361
    :try_start_2
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    .line 3362
    :catch_2
    move-exception v0

    .line 3363
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3364
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 3342
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .line 3347
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3348
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 3349
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .locals 2
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3383
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3385
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 3386
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3387
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3388
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 3390
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 3391
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    .line 3392
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3393
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 3398
    .end local v1    # "argument":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_4

    .line 3399
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3400
    return v1

    .line 3402
    :cond_4
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3403
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez v0, :cond_5

    .line 3404
    return v1

    .line 3406
    :cond_5
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3407
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-gez v0, :cond_7

    .line 3408
    return v1

    .line 3411
    :cond_6
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 3413
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .locals 11
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3417
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3418
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3419
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3420
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 3421
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3422
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 3423
    :cond_1
    const-string v2, "--uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3424
    iput-boolean v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    goto :goto_0

    .line 3426
    :cond_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3427
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 3428
    :cond_3
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3429
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3434
    .end local v3    # "argument":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_5

    .line 3435
    const-string v0, "Error: Package name not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    return v3

    .line 3437
    :cond_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    .line 3438
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    return v3

    .line 3441
    :cond_6
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 3442
    invoke-static {v2, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3443
    iget v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez v2, :cond_8

    .line 3444
    return v3

    .line 3447
    :cond_7
    iput v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3449
    :cond_8
    iget v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    if-ne v2, v0, :cond_9

    .line 3450
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3452
    :cond_9
    iput v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 3454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3456
    goto :goto_1

    .line 3455
    :catch_0
    move-exception v0

    .line 3457
    :goto_1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    const/4 v2, 0x0

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_f

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_f

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v5, 0x2e

    .line 3458
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_f

    .line 3459
    const/4 v0, 0x1

    .line 3460
    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v0, v5, :cond_a

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_a

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3461
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v6, :cond_a

    .line 3462
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3464
    :cond_a
    if-le v0, v4, :cond_f

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 3465
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3467
    .local v4, "userStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3468
    .local v5, "user":I
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3469
    .local v8, "type":C
    add-int/lit8 v0, v0, 0x1

    .line 3470
    move v9, v0

    .line 3471
    .local v9, "startTypeVal":I
    :goto_3
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_b

    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_b

    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3472
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v6, :cond_b

    .line 3473
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3475
    :cond_b
    if-le v0, v9, :cond_e

    .line 3476
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3478
    .local v6, "typeValStr":Ljava/lang/String;
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3479
    .local v7, "typeVal":I
    const/16 v10, 0x61

    if-ne v8, v10, :cond_c

    .line 3480
    add-int/lit16 v10, v7, 0x2710

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_4

    .line 3482
    :cond_c
    const/16 v10, 0x73

    if-ne v8, v10, :cond_d

    .line 3483
    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3486
    .end local v7    # "typeVal":I
    :cond_d
    :goto_4
    goto :goto_5

    .line 3485
    :catch_1
    move-exception v7

    .line 3489
    .end local v5    # "user":I
    .end local v6    # "typeValStr":Ljava/lang/String;
    .end local v8    # "type":C
    .end local v9    # "startTypeVal":I
    :cond_e
    :goto_5
    goto :goto_6

    .line 3488
    :catch_2
    move-exception v5

    .line 3492
    .end local v0    # "i":I
    .end local v4    # "userStr":Ljava/lang/String;
    :cond_f
    :goto_6
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    if-eq v0, v3, :cond_10

    .line 3493
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_7

    .line 3495
    :cond_10
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->access$1000(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3496
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_11

    .line 3497
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    iget v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-interface {v0, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3500
    :cond_11
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_12

    .line 3501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: No UID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3502
    return v3

    .line 3505
    :cond_12
    :goto_7
    return v2
.end method
