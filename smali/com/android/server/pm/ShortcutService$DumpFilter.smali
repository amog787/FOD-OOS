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

    .line 3786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3788
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3790
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3791
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3792
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3794
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 3796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3803
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 3804
    return-void
.end method

.method addPackageRegex(Ljava/lang/String;)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 3799
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3800
    return-void
.end method

.method addUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3807
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3808
    return-void
.end method

.method isPackageMatch(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3811
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3812
    return v1

    .line 3814
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3815
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3816
    return v1

    .line 3814
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3819
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method isUserMatch(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 3823
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3824
    return v1

    .line 3826
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3827
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 3828
    return v1

    .line 3826
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3831
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckInClear(Z)V
    .locals 0
    .param p1, "checkInClear"    # Z

    .line 3847
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3848
    return-void
.end method

.method public setDumpCheckIn(Z)V
    .locals 0
    .param p1, "dumpCheckIn"    # Z

    .line 3839
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3840
    return-void
.end method

.method public setDumpDetails(Z)V
    .locals 0
    .param p1, "dumpDetails"    # Z

    .line 3879
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3880
    return-void
.end method

.method public setDumpFiles(Z)V
    .locals 0
    .param p1, "dumpFiles"    # Z

    .line 3871
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3872
    return-void
.end method

.method public setDumpMain(Z)V
    .locals 0
    .param p1, "dumpMain"    # Z

    .line 3855
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3856
    return-void
.end method

.method public setDumpUid(Z)V
    .locals 0
    .param p1, "dumpUid"    # Z

    .line 3863
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3864
    return-void
.end method

.method public shouldCheckInClear()Z
    .locals 1

    .line 3843
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    return v0
.end method

.method public shouldDumpCheckIn()Z
    .locals 1

    .line 3835
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    return v0
.end method

.method public shouldDumpDetails()Z
    .locals 1

    .line 3875
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    return v0
.end method

.method public shouldDumpFiles()Z
    .locals 1

    .line 3867
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    return v0
.end method

.method public shouldDumpMain()Z
    .locals 1

    .line 3851
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    return v0
.end method

.method public shouldDumpUid()Z
    .locals 1

    .line 3859
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    return v0
.end method
