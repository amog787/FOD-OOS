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
.field attributionTag:Ljava/lang/String;

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

    .line 4551
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .locals 1
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/appop/AppOpsService;

    .line 4555
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4542
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 4556
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 4557
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 4558
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    .line 4559
    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 4538
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 2
    .param p0, "modeStr"    # Ljava/lang/String;
    .param p1, "err"    # Ljava/io/PrintWriter;

    .line 4590
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4591
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4592
    return v0

    .line 4590
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4596
    .end local v0    # "i":I
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4597
    :catch_0
    move-exception v0

    .line 4599
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

    .line 4600
    const/4 v0, -0x1

    return v0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3
    .param p0, "op"    # Ljava/lang/String;
    .param p1, "err"    # Ljava/io/PrintWriter;

    .line 4574
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4575
    :catch_0
    move-exception v0

    .line 4578
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 4579
    :catch_1
    move-exception v0

    .line 4582
    :try_start_2
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    .line 4583
    :catch_2
    move-exception v0

    .line 4584
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

    .line 4585
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4563
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .line 4568
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4569
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 4570
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

    .line 4604
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 4605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 4606
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 4607
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 4608
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4609
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 4611
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4612
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    .line 4613
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4614
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 4619
    .end local v1    # "argument":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_4

    .line 4620
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4621
    return v1

    .line 4623
    :cond_4
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 4624
    if-gez v0, :cond_5

    .line 4625
    return v1

    .line 4627
    :cond_5
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4628
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-gez v0, :cond_7

    .line 4629
    return v1

    .line 4632
    :cond_6
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 4634
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

    .line 4638
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 4639
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 4640
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 4641
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 4642
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4643
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 4644
    :cond_1
    const-string v2, "--uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4645
    iput-boolean v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    goto :goto_0

    .line 4646
    :cond_2
    const-string v2, "--attribution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4647
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    goto :goto_0

    .line 4649
    :cond_3
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 4650
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 4651
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4652
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 4657
    .end local v3    # "argument":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_6

    .line 4658
    const-string v0, "Error: Package name not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4659
    return v3

    .line 4660
    :cond_6
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_7

    if-eqz p1, :cond_7

    .line 4661
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    return v3

    .line 4664
    :cond_7
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 4665
    invoke-static {v2, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 4666
    if-gez v2, :cond_9

    .line 4667
    return v3

    .line 4670
    :cond_8
    iput v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 4672
    :cond_9
    iget v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    if-ne v2, v0, :cond_a

    .line 4673
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 4675
    :cond_a
    iput v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 4677
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4679
    goto :goto_1

    .line 4678
    :catch_0
    move-exception v0

    .line 4680
    :goto_1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    const/4 v2, 0x0

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_10

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_10

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v5, 0x2e

    .line 4681
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_10

    .line 4682
    const/4 v0, 0x1

    .line 4683
    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v0, v5, :cond_b

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_b

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 4684
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v6, :cond_b

    .line 4685
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4687
    :cond_b
    if-le v0, v4, :cond_10

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_10

    .line 4688
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4690
    .local v4, "userStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4691
    .local v5, "user":I
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 4692
    .local v8, "type":C
    add-int/lit8 v0, v0, 0x1

    .line 4693
    move v9, v0

    .line 4694
    .local v9, "startTypeVal":I
    :goto_3
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_c

    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_c

    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 4695
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v6, :cond_c

    .line 4696
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4698
    :cond_c
    if-le v0, v9, :cond_f

    .line 4699
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4701
    .local v6, "typeValStr":Ljava/lang/String;
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4702
    .local v7, "typeVal":I
    const/16 v10, 0x61

    if-ne v8, v10, :cond_d

    .line 4703
    add-int/lit16 v10, v7, 0x2710

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_4

    .line 4705
    :cond_d
    const/16 v10, 0x73

    if-ne v8, v10, :cond_e

    .line 4706
    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4709
    .end local v7    # "typeVal":I
    :cond_e
    :goto_4
    goto :goto_5

    .line 4708
    :catch_1
    move-exception v7

    .line 4712
    .end local v5    # "user":I
    .end local v6    # "typeValStr":Ljava/lang/String;
    .end local v8    # "type":C
    .end local v9    # "startTypeVal":I
    :cond_f
    :goto_5
    goto :goto_6

    .line 4711
    :catch_2
    move-exception v5

    .line 4715
    .end local v0    # "i":I
    .end local v4    # "userStr":Ljava/lang/String;
    :cond_10
    :goto_6
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    if-eq v0, v3, :cond_11

    .line 4716
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_7

    .line 4718
    :cond_11
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->access$1900(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 4719
    if-gez v0, :cond_12

    .line 4720
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    iget v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-interface {v0, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 4723
    :cond_12
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_13

    .line 4724
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

    .line 4725
    return v3

    .line 4728
    :cond_13
    :goto_7
    return v2
.end method
