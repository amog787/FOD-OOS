.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$FillUi$QXIyKJs3cMApGd5ifauQkxdpdqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$QXIyKJs3cMApGd5ifauQkxdpdqk;->f$0:Lcom/android/server/autofill/ui/FillUi;

    return-void
.end method


# virtual methods
.method public final onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$QXIyKJs3cMApGd5ifauQkxdpdqk;->f$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$1$FillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
