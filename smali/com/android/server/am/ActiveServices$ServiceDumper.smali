.class final Lcom/android/server/am/ActiveServices$ServiceDumper;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceDumper"
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private final dumpAll:Z

.field private final dumpPackage:Ljava/lang/String;

.field private final fd:Ljava/io/FileDescriptor;

.field private final matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field private needSep:Z

.field private final nowReal:J

.field private printed:Z

.field private printedAnything:Z

.field private final pw:Ljava/io/PrintWriter;

.field private final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 16
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .line 4886
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    iput-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4873
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 4875
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    .line 4877
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4878
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4879
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4887
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    .line 4888
    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 4889
    iput-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    .line 4890
    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    .line 4891
    iput-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 4892
    new-instance v8, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    iput-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 4893
    move/from16 v9, p5

    invoke-virtual {v8, v2, v9}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 4895
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v8}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v8

    .line 4896
    .local v8, "users":[I
    array-length v10, v8

    :goto_0
    if-ge v4, v10, :cond_3

    aget v11, v8, v4

    .line 4897
    .local v11, "user":I
    invoke-static {v1, v11}, Lcom/android/server/am/ActiveServices;->access$500(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v12

    .line 4898
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v13, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 4899
    const/4 v13, 0x0

    .local v13, "si":I
    :goto_1
    iget-object v14, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 4900
    iget-object v14, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 4901
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v15, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v15, v14, v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4902
    goto :goto_2

    .line 4904
    :cond_0
    if-eqz v3, :cond_1

    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4905
    goto :goto_2

    .line 4907
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4899
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 4896
    .end local v11    # "user":I
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "si":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 4911
    :cond_3
    return-void
.end method

.method private dumpHeaderLocked()V
    .locals 2

    .line 4914
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4916
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  Last ANR service:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4917
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4918
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4920
    :cond_0
    return-void
.end method

.method private dumpRemainsLocked()V
    .locals 18

    .line 5121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "    "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_5

    .line 5122
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 5124
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 5125
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5126
    goto :goto_1

    .line 5128
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5129
    goto :goto_1

    .line 5131
    :cond_1
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5132
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_3

    .line 5133
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 5134
    :cond_2
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5135
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Pending services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5136
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5138
    :cond_3
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Pending "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5139
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5123
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5141
    .end local v1    # "i":I
    :cond_4
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5144
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 5145
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5146
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 5147
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 5148
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 5149
    goto :goto_3

    .line 5151
    :cond_6
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 5152
    goto :goto_3

    .line 5154
    :cond_7
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5155
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_9

    .line 5156
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 5157
    :cond_8
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5158
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Restarting services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5159
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5161
    :cond_9
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Restarting "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5162
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5146
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5164
    .end local v1    # "i":I
    :cond_a
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5167
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 5168
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5169
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_10

    .line 5170
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 5171
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 5172
    goto :goto_5

    .line 5174
    :cond_c
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 5175
    goto :goto_5

    .line 5177
    :cond_d
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5178
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_f

    .line 5179
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_e

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 5180
    :cond_e
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5181
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Destroying services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5182
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5184
    :cond_f
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Destroy "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5185
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5169
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5187
    .end local v1    # "i":I
    :cond_10
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5190
    :cond_11
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v1, :cond_18

    .line 5191
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5192
    const/4 v1, 0x0

    .local v1, "ic":I
    :goto_6
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_18

    .line 5193
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5194
    .local v5, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 5195
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 5196
    .local v7, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 5197
    goto :goto_8

    .line 5199
    :cond_12
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_16

    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5200
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 5201
    goto :goto_8

    .line 5203
    :cond_13
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5204
    iget-boolean v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v8, :cond_15

    .line 5205
    iget-boolean v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v8, :cond_14

    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 5206
    :cond_14
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5207
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v9, "  Connection bindings to services:"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5208
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5210
    :cond_15
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v9, "  * "

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5211
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5194
    .end local v7    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_16
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 5192
    .end local v5    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "i":I
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5216
    .end local v1    # "ic":I
    :cond_18
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    if-eqz v1, :cond_22

    .line 5217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 5218
    .local v5, "nowElapsed":J
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v1

    .line 5219
    .local v1, "users":[I
    array-length v7, v1

    :goto_9
    if-ge v3, v7, :cond_22

    aget v8, v1, v3

    .line 5220
    .local v8, "user":I
    const/4 v9, 0x0

    .line 5221
    .local v9, "printedUser":Z
    iget-object v10, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v10, v10, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5222
    .local v10, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v10, :cond_19

    .line 5223
    goto/16 :goto_c

    .line 5225
    :cond_19
    iget-object v11, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "i":I
    :goto_a
    const-string v12, ":"

    if-ltz v11, :cond_1f

    .line 5226
    iget-object v13, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 5227
    .local v13, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v14, :cond_1a

    iget-object v15, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 5228
    goto/16 :goto_b

    .line 5230
    :cond_1a
    if-nez v9, :cond_1c

    .line 5231
    const/4 v9, 0x1

    .line 5232
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5233
    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v14, :cond_1b

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 5234
    :cond_1b
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5235
    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v15, "Active foreground apps - user "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5236
    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 5237
    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5239
    :cond_1c
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, "  #"

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5240
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5241
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, ": "

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5242
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5243
    iget-object v12, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    if-eqz v12, :cond_1d

    .line 5244
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, "    mLabel="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5245
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5247
    :cond_1d
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, "    mNumActive="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5248
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 5249
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, " mAppOnTop="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5250
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Z)V

    .line 5251
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, " mShownWhileTop="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5252
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Z)V

    .line 5253
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, " mShownWhileScreenOn="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5254
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->println(Z)V

    .line 5255
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, "    mStartTime="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5256
    iget-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    sub-long/2addr v14, v5

    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v14, v15, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5257
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, " mStartVisibleTime="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5258
    iget-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    sub-long/2addr v14, v5

    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v14, v15, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5259
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 5260
    iget-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_1e

    .line 5261
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v14, "    mEndTime="

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5262
    iget-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    sub-long/2addr v14, v5

    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v14, v15, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5263
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 5225
    .end local v13    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_1e
    :goto_b
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_a

    .line 5266
    .end local v11    # "i":I
    :cond_1f
    invoke-virtual {v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->hasMessagesOrCallbacks()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 5267
    iget-boolean v11, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v11, :cond_20

    .line 5268
    iget-object v11, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    .line 5270
    :cond_20
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5271
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5272
    iget-object v11, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, "  Handler - user "

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5273
    iget-object v11, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 5274
    iget-object v11, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5275
    new-instance v11, Landroid/util/PrintWriterPrinter;

    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-direct {v11, v12}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v10, v11, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->dumpMine(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5219
    .end local v8    # "user":I
    .end local v9    # "printedUser":Z
    .end local v10    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_21
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 5280
    .end local v1    # "users":[I
    .end local v5    # "nowElapsed":J
    :cond_22
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-nez v1, :cond_23

    .line 5281
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v2, "  (nothing)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5283
    :cond_23
    return-void
.end method

.method private dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 5049
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5050
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_0

    .line 5051
    return-void

    .line 5053
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 5054
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-nez v1, :cond_1

    .line 5055
    return-void

    .line 5057
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v3, "    Client:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5058
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 5060
    :try_start_0
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5062
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    invoke-interface {v1, v3, p1, v4}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 5063
    const-string v3, "      "

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 5066
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5068
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5069
    goto :goto_0

    .line 5068
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5069
    nop

    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices$ServiceDumper;
    .end local p1    # "r":Lcom/android/server/am/ServiceRecord;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5072
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "thread":Landroid/app/IApplicationThread;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices$ServiceDumper;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v2

    .line 5073
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v4, "      Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5070
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 5071
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Failure while dumping the service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5074
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 5075
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 5076
    return-void
.end method

.method private dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 5014
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserHeaderLocked(I)V

    .line 5015
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  * "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5016
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5017
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v0, :cond_0

    .line 5018
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    "

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    goto/16 :goto_3

    .line 5021
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    app="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5022
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5023
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    created="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5024
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iget-wide v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5025
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " started="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5026
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 5027
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " connections="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5028
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5029
    .local v0, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5030
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 5031
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v2, "    Connections:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5032
    const/4 v1, 0x0

    .local v1, "conni":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5033
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 5034
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5035
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 5036
    .local v4, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5037
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 5038
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 5037
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5039
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5040
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 5041
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    const-string/jumbo v7, "null"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    .end local v4    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5032
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5046
    .end local v0    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v1    # "conni":I
    :cond_3
    :goto_3
    return-void
.end method

.method private dumpUserHeaderLocked(I)V
    .locals 4
    .param p1, "user"    # I

    .line 5000
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5001
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v0, :cond_0

    .line 5002
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 5004
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active services:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5005
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5007
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5008
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v0, :cond_2

    .line 5009
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 5011
    :cond_2
    return-void
.end method

.method private dumpUserRemainsLocked(I)V
    .locals 9
    .param p1, "user"    # I

    .line 5079
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->access$500(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 5080
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5081
    const/4 v2, 0x0

    .local v2, "si":I
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "SN":I
    :goto_0
    const-string v4, "  User "

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    .line 5082
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 5083
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v6, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5084
    goto :goto_1

    .line 5086
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5087
    goto :goto_1

    .line 5089
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v7, :cond_3

    .line 5090
    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v7, :cond_2

    .line 5091
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 5093
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " delayed start services:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5096
    :cond_3
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5097
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Delayed start "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5081
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5099
    .end local v2    # "si":I
    .end local v3    # "SN":I
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5100
    const/4 v1, 0x0

    .local v1, "si":I
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "SN":I
    :goto_2
    if-ge v1, v2, :cond_9

    .line 5101
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 5102
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v3, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 5103
    goto :goto_3

    .line 5105
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 5106
    goto :goto_3

    .line 5108
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_8

    .line 5109
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v6, :cond_7

    .line 5110
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 5112
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " starting in background:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5113
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 5115
    :cond_8
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 5116
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Starting bg "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5100
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5118
    .end local v1    # "si":I
    .end local v2    # "SN":I
    :cond_9
    return-void
.end method


# virtual methods
.method dumpLocked()V
    .locals 8

    .line 4923
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 4926
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4927
    .local v0, "users":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    .line 4929
    .local v4, "user":I
    const/4 v5, 0x0

    .line 4930
    .local v5, "serviceIdx":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_0

    .line 4931
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4933
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4934
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 4935
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4936
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 4937
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4938
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v5, v5, 0x1

    .line 4939
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_1

    .line 4940
    goto :goto_3

    .line 4942
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4943
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_2

    .line 4944
    :cond_2
    :goto_3
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4947
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4927
    .end local v4    # "user":I
    .end local v5    # "serviceIdx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4951
    .end local v0    # "users":[I
    :cond_4
    goto :goto_4

    .line 4949
    :catch_0
    move-exception v0

    .line 4950
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4953
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 4954
    return-void
.end method

.method dumpWithClient()V
    .locals 8

    .line 4957
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4958
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 4959
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4962
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4963
    .local v0, "users":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    .line 4965
    .local v4, "user":I
    const/4 v5, 0x0

    .line 4966
    .local v5, "serviceIdx":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_0

    .line 4967
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4969
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4970
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 4971
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4972
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 4973
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4974
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v5, v5, 0x1

    .line 4975
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_1

    .line 4976
    goto :goto_3

    .line 4978
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v7, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4979
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4980
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4981
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4982
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_2

    .line 4980
    .restart local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ActiveServices$ServiceDumper;
    throw v1

    .line 4983
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices$ServiceDumper;
    :cond_2
    :goto_3
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4986
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4987
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V

    .line 4988
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 4963
    .end local v4    # "user":I
    .end local v5    # "serviceIdx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4988
    .restart local v4    # "user":I
    .restart local v5    # "serviceIdx":I
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ActiveServices$ServiceDumper;
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 4992
    .end local v0    # "users":[I
    .end local v4    # "user":I
    .end local v5    # "serviceIdx":I
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices$ServiceDumper;
    :cond_4
    goto :goto_4

    .line 4990
    :catch_0
    move-exception v0

    .line 4991
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4994
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4995
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 4996
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4997
    return-void

    .line 4996
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4959
    :catchall_3
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
