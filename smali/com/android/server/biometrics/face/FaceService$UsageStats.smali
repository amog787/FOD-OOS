.class Lcom/android/server/biometrics/face/FaceService$UsageStats;
.super Ljava/lang/Object;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStats"
.end annotation


# static fields
.field static final EVENT_LOG_SIZE:I = 0x64


# instance fields
.field acceptCount:I

.field acceptLatency:J

.field mAuthenticationEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mErrorCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mErrorLatency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field rejectCount:I

.field rejectLatency:J

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 161
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    .line 163
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    .line 164
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    .line 165
    iput-object p2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mContext:Landroid/content/Context;

    .line 166
    return-void
.end method


# virtual methods
.method addEvent(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    .line 169
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$000(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    .line 176
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    .line 179
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    .line 183
    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 182
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_0
    return-void
.end method

.method print(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Events since last reboot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accept\tCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\tAverage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v3, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    const-wide/16 v4, 0x0

    if-lez v3, :cond_1

    iget-wide v6, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    int-to-long v8, v3

    div-long/2addr v6, v8

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject\tCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget v3, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    if-lez v3, :cond_2

    iget-wide v6, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    int-to-long v8, v3

    div-long/2addr v6, v8

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 201
    .local v3, "key":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 202
    .local v6, "count":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\tCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    .line 203
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    if-lez v6, :cond_3

    iget-object v8, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, v6

    div-long/2addr v8, v10

    goto :goto_4

    .line 205
    :cond_3
    move-wide v8, v4

    :goto_4
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v6    # "count":I
    goto :goto_3

    .line 208
    :cond_4
    return-void
.end method
