.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$E4J-3bUcyqJNd4ZlExSBhwy8Tx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$E4J-3bUcyqJNd4ZlExSBhwy8Tx4;->f$0:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$E4J-3bUcyqJNd4ZlExSBhwy8Tx4;->f$0:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide()V

    return-void
.end method
