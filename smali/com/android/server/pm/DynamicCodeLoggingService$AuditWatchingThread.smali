.class Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;
.super Ljava/lang/Thread;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DynamicCodeLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditWatchingThread"
.end annotation


# instance fields
.field private final mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 173
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 174
    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 175
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    .line 176
    return-void
.end method

.method private processAuditEvents()Z
    .locals 13

    .line 225
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [I

    const-string v2, "auditd"

    invoke-static {v2}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 226
    .local v1, "tags":[I
    aget v2, v1, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 229
    return v0

    .line 232
    :cond_0
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$000()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v2

    .line 234
    .local v2, "dynamicCodeLogger":Lcom/android/server/pm/dex/DynamicCodeLogger;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    invoke-static {v1, v4}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 237
    move v5, v3

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 238
    iget-object v6, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$300(Lcom/android/server/pm/DynamicCodeLoggingService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 239
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v3

    .line 243
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/EventLog$Event;

    .line 246
    .local v6, "event":Landroid/util/EventLog$Event;
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getUid()I

    move-result v7

    .line 247
    .local v7, "uid":I
    invoke-static {v7}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 248
    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v8

    .line 251
    .local v8, "data":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_3

    .line 252
    goto :goto_1

    .line 254
    :cond_3
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 255
    .local v9, "message":Ljava/lang/String;
    const-string/jumbo v10, "type=1400 "

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 256
    goto :goto_1

    .line 261
    :cond_4
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$400()Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 262
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_5

    .line 263
    goto :goto_1

    .line 265
    :cond_5
    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, "path":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 269
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 271
    :cond_6
    invoke-virtual {v2, v7, v11}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordNative(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v6    # "event":Landroid/util/EventLog$Event;
    .end local v7    # "uid":I
    .end local v8    # "data":Ljava/lang/Object;
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "path":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 274
    .end local v5    # "i":I
    :cond_7
    return v0

    .line 275
    .end local v1    # "tags":[I
    .end local v2    # "dynamicCodeLogger":Lcom/android/server/pm/dex/DynamicCodeLogger;
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuditWatchingJob failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    invoke-direct {p0}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->processAuditEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/DynamicCodeLoggingService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 190
    :cond_0
    return-void
.end method
