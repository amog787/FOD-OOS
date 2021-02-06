.class public final synthetic Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;->f$1:I

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleMessage$1(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V

    return-void
.end method
