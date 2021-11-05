.class public final synthetic Lcom/android/server/notification/-$$Lambda$SnoozeHelper$j9CMOic9PGs_JNf8sQeWp_WInBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/SnoozeHelper$Inserter;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public synthetic constructor <init>(JLorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$j9CMOic9PGs_JNf8sQeWp_WInBo;->f$0:J

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$j9CMOic9PGs_JNf8sQeWp_WInBo;->f$1:Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final insert(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$j9CMOic9PGs_JNf8sQeWp_WInBo;->f$0:J

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$j9CMOic9PGs_JNf8sQeWp_WInBo;->f$1:Lorg/xmlpull/v1/XmlSerializer;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/notification/SnoozeHelper;->lambda$writeXml$3(JLorg/xmlpull/v1/XmlSerializer;Ljava/lang/Long;)V

    return-void
.end method
