.class final Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionRequest"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public final mLocale:Ljava/lang/String;

.field public final mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field public final mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

.field public final mUid:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mUid:I

    .line 831
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    .line 832
    iput-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    .line 833
    iput-object p4, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 834
    iput-object p5, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    .line 835
    return-void
.end method
