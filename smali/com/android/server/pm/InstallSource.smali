.class final Lcom/android/server/pm/InstallSource;
.super Ljava/lang/Object;
.source "InstallSource.java"


# static fields
.field static final EMPTY:Lcom/android/server/pm/InstallSource;

.field private static final EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;


# instance fields
.field final initiatingPackageName:Ljava/lang/String;

.field final initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

.field final installerPackageName:Ljava/lang/String;

.field final isInitiatingPackageUninstalled:Z

.field final isOrphaned:Z

.field final originatingPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 34
    new-instance v7, Lcom/android/server/pm/InstallSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V

    sput-object v7, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 37
    new-instance v0, Lcom/android/server/pm/InstallSource;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V

    sput-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V
    .locals 1
    .param p1, "initiatingPackageName"    # Ljava/lang/String;
    .param p2, "originatingPackageName"    # Ljava/lang/String;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "isOrphaned"    # Z
    .param p5, "isInitiatingPackageUninstalled"    # Z
    .param p6, "initiatingPackageSignatures"    # Lcom/android/server/pm/PackageSignatures;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-nez p1, :cond_1

    .line 115
    if-nez p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 116
    xor-int/lit8 v0, p5, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 121
    iput-boolean p4, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    .line 122
    iput-boolean p5, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    .line 123
    iput-object p6, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 124
    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 1
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;
    .locals 6
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "isOrphaned"    # Z
    .param p4, "isInitiatingPackageUninstalled"    # Z

    .line 88
    nop

    .line 89
    invoke-static {p0}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p2}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const/4 v5, 0x0

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method private static createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .locals 8
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "isOrphaned"    # Z
    .param p4, "isInitiatingPackageUninstalled"    # Z
    .param p5, "initiatingPackageSignatures"    # Lcom/android/server/pm/PackageSignatures;

    .line 99
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p5, :cond_1

    if-nez p4, :cond_1

    .line 102
    if-eqz p3, :cond_0

    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    :goto_0
    return-object v0

    .line 104
    :cond_1
    new-instance v0, Lcom/android/server/pm/InstallSource;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V

    return-object v0
.end method

.method private static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 208
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 169
    if-nez p1, :cond_0

    .line 170
    return-object p0

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "modified":Z
    iget-boolean v1, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    .line 175
    .local v1, "isInitiatingPackageUninstalled":Z
    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 176
    .local v2, "originatingPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 177
    .local v3, "installerPackageName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    .line 179
    .local v4, "isOrphaned":Z
    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    if-nez v1, :cond_1

    .line 184
    const/4 v1, 0x1

    .line 185
    const/4 v0, 0x1

    .line 188
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    const/4 v3, 0x0

    .line 194
    const/4 v4, 0x1

    .line 195
    const/4 v0, 0x1

    .line 198
    :cond_3
    if-nez v0, :cond_4

    .line 199
    return-object p0

    .line 202
    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    move v9, v1

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v5

    return-object v5
.end method

.method setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .locals 7
    .param p1, "signatures"    # Lcom/android/server/pm/PackageSignatures;

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne p1, v0, :cond_0

    .line 158
    return-object p0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v5, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method setInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 7
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    return-object p0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v5, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v6, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 134
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;
    .locals 7
    .param p1, "isOrphaned"    # Z

    .line 145
    iget-boolean v0, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-ne p1, v0, :cond_0

    .line 146
    return-object p0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v6, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method
