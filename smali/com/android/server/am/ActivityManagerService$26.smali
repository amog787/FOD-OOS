.class Lcom/android/server/am/ActivityManagerService$26;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->reportMemUsage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/ProcessMemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 16091
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/server/am/ProcessMemInfo;
    .param p2, "rhs"    # Lcom/android/server/am/ProcessMemInfo;

    .line 16093
    iget v0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 16094
    iget v0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 16096
    :cond_1
    iget-wide v0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 16097
    iget-wide v0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 16099
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16091
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$26;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    move-result p1

    return p1
.end method
