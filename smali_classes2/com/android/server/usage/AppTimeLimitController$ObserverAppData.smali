.class Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverAppData"
.end annotation


# instance fields
.field appUsageGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;",
            ">;"
        }
    .end annotation
.end field

.field appUsageLimitGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;",
            ">;"
        }
    .end annotation
.end field

.field sessionUsageGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;

.field private uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/usage/AppTimeLimitController;I)V
    .locals 0
    .param p2, "uid"    # I

    .line 172
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    .line 167
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 170
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 173
    iput p2, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->uid:I

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/usage/AppTimeLimitController$1;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;-><init>(Lcom/android/server/usage/AppTimeLimitController;I)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 193
    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 195
    const-string v0, "    App Usage Groups:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 197
    .local v0, "nAppUsageGroups":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    invoke-virtual {v2, p1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 199
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    const-string v1, "    Session Usage Groups:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 203
    .local v1, "nSessionUsageGroups":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    invoke-virtual {v3, p1}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 205
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v2    # "i":I
    :cond_1
    const-string v2, "    App Usage Limit Groups:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 209
    .local v2, "nAppUsageLimitGroups":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 210
    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    invoke-virtual {v4, p1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->dump(Ljava/io/PrintWriter;)V

    .line 211
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method removeAppUsageGroup(I)V
    .locals 1
    .param p1, "observerId"    # I

    .line 178
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 179
    return-void
.end method

.method removeAppUsageLimitGroup(I)V
    .locals 1
    .param p1, "observerId"    # I

    .line 188
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 189
    return-void
.end method

.method removeSessionUsageGroup(I)V
    .locals 1
    .param p1, "observerId"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 184
    return-void
.end method
