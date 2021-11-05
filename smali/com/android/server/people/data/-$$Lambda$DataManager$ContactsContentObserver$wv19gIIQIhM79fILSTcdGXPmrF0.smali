.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0;->f$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0;->f$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-static {v0, v1, p1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->lambda$onChange$0(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method
