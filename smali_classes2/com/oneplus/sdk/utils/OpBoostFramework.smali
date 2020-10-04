.class public Lcom/oneplus/sdk/utils/OpBoostFramework;
.super Ljava/lang/Object;
.source "OpBoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final MAX_ACQUIRE_DURATION:I = 0x7d0

.field public static final MIN_ACQUIRE_DURATION:I = 0x0

.field public static final REQUEST_FAILED_EXCEPTION:I = -0x4

.field public static final REQUEST_FAILED_INVALID_DURATION:I = -0x2

.field public static final REQUEST_FAILED_NATIVE:I = -0x1

.field public static final REQUEST_FAILED_UNKNOWN_POLICY:I = -0x3

.field public static final REQUEST_POLICY_PERFORMANCE:I = 0x0

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpBoostFramework"

.field private static sPerfBoostInstance:Landroid/util/BoostFramework;

.field private static sProjectName:Ljava/lang/String;

.field private static sProjectName_old:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->DBG:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    .line 51
    const-string v0, "ro.prj_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    .line 53
    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpBoostFramework() : sPerfBoostInstance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBoostFramework"

    invoke-static {v1, v0}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 8
    sget-boolean v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->DBG:Z

    return v0
.end method


# virtual methods
.method public acquireBoostFor(II)I
    .locals 12
    .param p1, "policy"    # I
    .param p2, "duration"    # I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "ret":I
    const-string v1, ""

    .line 87
    .local v1, "projectName":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_0
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    .line 92
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireBoostFor() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpBoostFramework"

    invoke-static {v3, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor() : duration = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_1

    .line 123
    const/4 v0, -0x3

    goto/16 :goto_3

    .line 98
    :cond_1
    const/16 v2, 0x7d0

    if-gt p2, v2, :cond_8

    if-gez p2, :cond_2

    goto/16 :goto_2

    .line 103
    :cond_2
    :try_start_0
    const-string v2, "14049"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eqz v2, :cond_3

    .line 104
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v8, v8, [I

    const/16 v9, 0x1e01

    aput v9, v8, v7

    const/16 v7, 0x20d

    aput v7, v8, v6

    const/16 v6, 0x4d04

    aput v6, v8, v5

    const/16 v5, 0x1f12

    aput v5, v8, v4

    invoke-virtual {v2, p2, v8}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto/16 :goto_3

    .line 105
    :cond_3
    const-string v2, "15801"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v9, 0x640

    const v10, 0x40800100    # 4.000122f

    const/high16 v11, 0x40800000    # 4.0f

    if-eqz v2, :cond_4

    .line 107
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v8, v8, [I

    aput v11, v8, v7

    const/16 v7, 0x834

    aput v7, v8, v6

    aput v10, v8, v5

    aput v9, v8, v4

    invoke-virtual {v2, p2, v8}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto/16 :goto_3

    .line 108
    :cond_4
    const-string v2, "15811"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v8, v8, [I

    aput v11, v8, v7

    const/16 v7, 0x960

    aput v7, v8, v6

    aput v10, v8, v5

    aput v9, v8, v4

    invoke-virtual {v2, p2, v8}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_3

    .line 111
    :cond_5
    const-string v2, "16859"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v9, 0xffe

    if-nez v2, :cond_7

    const-string v2, "17801"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "17819"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 115
    :cond_6
    const-string v2, "Try to acquire full speed perf lock for unspecified proj"

    invoke-static {v3, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v8, v8, [I

    aput v11, v8, v7

    aput v9, v8, v6

    aput v10, v8, v5

    aput v9, v8, v4

    invoke-virtual {v2, p2, v8}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 120
    goto :goto_3

    .line 113
    :cond_7
    :goto_1
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v8, v8, [I

    aput v11, v8, v7

    aput v9, v8, v6

    aput v10, v8, v5

    aput v9, v8, v4

    invoke-virtual {v2, p2, v8}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v0, -0x4

    goto :goto_4

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_2
    const/4 v0, -0x2

    .line 130
    :goto_3
    nop

    .line 131
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor++++++() : ret = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v0
.end method

.method public releaseBoost()I
    .locals 6

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "ret":I
    const-string v1, ""

    .line 147
    .local v1, "projectName":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_0
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    .line 152
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseBoost, projectName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpBoostFramework"

    invoke-static {v3, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 159
    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v0, -0x4

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method
