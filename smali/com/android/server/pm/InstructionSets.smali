.class public Lcom/android/server/pm/InstructionSets;
.super Ljava/lang/Object;
.source "InstructionSets.java"


# static fields
.field private static final PREFERRED_INSTRUCTION_SET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 39
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDexCodeInstructionSets()[Ljava/lang/String;
    .locals 4

    .line 82
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    .local v0, "supportedInstructionSets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 84
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 85
    .local v2, "abi":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 83
    .end local v2    # "abi":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAllInstructionSets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 92
    .local v0, "allAbis":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v1, "allInstructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 95
    .local v4, "abi":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "instructionSet":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v4    # "abi":Ljava/lang/String;
    .end local v5    # "instructionSet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_1
    return-object v1
.end method

.method public static getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "primaryCpuAbi"    # Ljava/lang/String;
    .param p1, "secondaryCpuAbi"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 45
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 46
    invoke-static {p1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 44
    return-object v2

    .line 48
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    .line 49
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 48
    return-object v1

    .line 53
    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    return-object v1
.end method

.method public static getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sharedLibraryIsa"    # Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.dalvik.vm.isa."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "dexCodeIsa":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "instructionSets"    # [Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 72
    .local v0, "dexCodeInstructionSets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 73
    .local v3, "instructionSet":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v3    # "instructionSet":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getPreferredInstructionSet()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-object v0
.end method

.method public static getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;
    .locals 1
    .param p0, "abis"    # Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 108
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
