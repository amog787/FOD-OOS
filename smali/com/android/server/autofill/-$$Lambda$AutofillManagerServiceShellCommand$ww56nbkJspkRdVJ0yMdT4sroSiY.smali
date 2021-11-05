.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;->f$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iput p2, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;->f$1:I

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;->f$2:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;->f$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget v1, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;->f$1:I

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;->f$2:Lcom/android/internal/os/IResultReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$requestDestroy$1$AutofillManagerServiceShellCommand(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method
