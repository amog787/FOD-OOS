.class Lcom/android/server/pm/ShortcutService$DumpFilter;
.super Ljava/lang/Object;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpFilter"
.end annotation


# instance fields
.field private mCheckInClear:Z

.field private mDumpCheckIn:Z

.field private mDumpDetails:Z

.field private mDumpFiles:Z

.field private mDumpMain:Z

.field private mDumpUid:Z

.field private mPackagePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 4276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 4278
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 4280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 4281
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 4282
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 4284
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 4285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 4286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4293
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 4294
    return-void
.end method

.method addPackageRegex(Ljava/lang/String;)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 4289
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4290
    return-void
.end method

.method addUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4297
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4298
    return-void
.end method

.method isPackageMatch(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4301
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4302
    return v1

    .line 4304
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4305
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4306
    return v1

    .line 4304
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4309
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method isUserMatch(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 4313
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4314
    return v1

    .line 4316
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4317
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 4318
    return v1

    .line 4316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4321
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckInClear(Z)V
    .locals 0
    .param p1, "checkInClear"    # Z

    .line 4337
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 4338
    return-void
.end method

.method public setDumpCheckIn(Z)V
    .locals 0
    .param p1, "dumpCheckIn"    # Z

    .line 4329
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 4330
    return-void
.end method

.method public setDumpDetails(Z)V
    .locals 0
    .param p1, "dumpDetails"    # Z

    .line 4369
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 4370
    return-void
.end method

.method public setDumpFiles(Z)V
    .locals 0
    .param p1, "dumpFiles"    # Z

    .line 4361
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 4362
    return-void
.end method

.method public setDumpMain(Z)V
    .locals 0
    .param p1, "dumpMain"    # Z

    .line 4345
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 4346
    return-void
.end method

.method public setDumpUid(Z)V
    .locals 0
    .param p1, "dumpUid"    # Z

    .line 4353
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 4354
    return-void
.end method

.method public shouldCheckInClear()Z
    .locals 1

    .line 4333
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    return v0
.end method

.method public shouldDumpCheckIn()Z
    .locals 1

    .line 4325
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    return v0
.end method

.method public shouldDumpDetails()Z
    .locals 1

    .line 4365
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    return v0
.end method

.method public shouldDumpFiles()Z
    .locals 1

    .line 4357
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    return v0
.end method

.method public shouldDumpMain()Z
    .locals 1

    .line 4341
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    return v0
.end method

.method public shouldDumpUid()Z
    .locals 1

    .line 4349
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    return v0
.end method
