.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;->f$0:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;->f$0:Lcom/android/server/notification/NotificationRecord;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationRecord;->lambda$calculateGrantableUris$0$NotificationRecord(Landroid/net/Uri;)V

    return-void
.end method
