.class Lcom/android/server/notification/EventConditionProvider$4;
.super Ljava/lang/Object;
.source "EventConditionProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EventConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/EventConditionProvider;

    .line 333
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$4;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$4;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->access$500(Lcom/android/server/notification/EventConditionProvider;)V

    .line 337
    return-void
.end method
