.class public Lcom/android/server/pm/PackageManagerServiceCompilerMapping;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompilerMapping.java"


# static fields
.field static final REASON_SHARED_INDEX:I = 0x6

.field public static final REASON_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    const-string v0, "first-boot"

    const-string v1, "boot"

    const-string v2, "install"

    const-string v3, "bg-dexopt"

    const-string v4, "ab-ota"

    const-string v5, "inactive"

    const-string/jumbo v6, "shared"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 36
    array-length v1, v0

    const/4 v2, 0x7

    if-ne v2, v1, :cond_1

    .line 39
    const/4 v1, 0x6

    aget-object v0, v0, v1

    const-string/jumbo v1, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "REASON_STRINGS not correct because of shared index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "REASON_STRINGS not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkProperties()V
    .locals 6

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "toThrow":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .local v1, "reason":I
    :goto_0
    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    .line 82
    :try_start_0
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "sysPropName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    .line 95
    nop

    .end local v2    # "sysPropName":Ljava/lang/String;
    goto :goto_1

    .line 84
    .restart local v2    # "sysPropName":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reason system property name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "toThrow":Ljava/lang/RuntimeException;
    .end local v1    # "reason":I
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "sysPropName":Ljava/lang/String;
    .restart local v0    # "toThrow":Ljava/lang/RuntimeException;
    .restart local v1    # "reason":I
    :catch_0
    move-exception v2

    .line 91
    .local v2, "exc":Ljava/lang/Exception;
    if-nez v0, :cond_1

    .line 92
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PMS compiler filter settings are bad."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 94
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    .end local v2    # "exc":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "reason":I
    :cond_2
    if-nez v0, :cond_3

    .line 101
    return-void

    .line 99
    :cond_3
    throw v0
.end method

.method private static getAndCheckValidity(I)Ljava/lang/String;
    .locals 5
    .param p0, "reason"    # I

    .line 55
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sysPropValue":Ljava/lang/String;
    const-string v1, ")"

    const-string v2, "Value \""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->isFilterAllowedForReason(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    return-object v0

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not allowed (reason "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not valid (reason "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getCompilerFilterForReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 104
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCompilerFilter()Ljava/lang/String;
    .locals 3

    .line 114
    const-string v0, "dalvik.vm.dex2oat-filter"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "speed"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    return-object v0

    .line 121
    :cond_2
    :goto_0
    return-object v1

    .line 116
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getReasonName(I)Ljava/lang/String;
    .locals 3
    .param p0, "reason"    # I

    .line 128
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 129
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 131
    :cond_0
    if-ltz p0, :cond_1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 134
    aget-object v0, v0, p0

    return-object v0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemPropertyName(I)Ljava/lang/String;
    .locals 3
    .param p0, "reason"    # I

    .line 45
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pm.dexopt."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isFilterAllowedForReason(ILjava/lang/String;)Z
    .locals 1
    .param p0, "reason"    # I
    .param p1, "filter"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

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
