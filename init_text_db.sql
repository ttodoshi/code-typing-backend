create table public.regular_texts
(
    uuid    text not null
        primary key,
    content text not null
);

alter table public.regular_texts
    owner to postgres;

create table public.programming_languages
(
    uuid text        not null
        primary key,
    name text unique not null,
    logo text unique not null
);

alter table public.programming_languages
    owner to postgres;

create table public.code_examples
(
    uuid                      text not null
        primary key,
    content                   text not null,
    programming_language_uuid text not null
        constraint fk_code_examples_programming_language
            references public.programming_languages
);

alter table public.code_examples
    owner to postgres;

create index idx_code_examples_programming_language_uuid
    on public.code_examples (programming_language_uuid);

insert into public.regular_texts(uuid, content)
values (gen_random_uuid(),
        'Кстати, акционеры крупнейших компаний будут объективно рассмотрены соответствующими инстанциями! А также независимые государства объявлены нарушающими общечеловеческие нормы этики и морали. Идейные соображения высшего порядка, а также внедрение современных методик создаёт предпосылки для как самодостаточных, так и внешне зависимых концептуальных решений.'),
       (gen_random_uuid(),
        'Внезапно, сторонники тоталитаризма в науке и по сей день остаются уделом либералов, которые жаждут быть описаны максимально подробно. Лишь представители современных социальных резервов объективно рассмотрены соответствующими инстанциями. И нет сомнений, что тщательные исследования конкурентов и по сей день остаются уделом либералов, которые жаждут быть функционально разнесены на независимые элементы.'),
       (gen_random_uuid(),
        'Банальные, но неопровержимые выводы, а также стремящиеся вытеснить традиционное производство, нанотехнологии призывают нас к новым свершениям, которые, в свою очередь, должны быть в равной степени предоставлены сами себе. Безусловно, укрепление и развитие внутренней структуры создаёт необходимость включения в производственный план целого ряда внеочередных мероприятий с учётом комплекса существующих финансовых и административных условий. Ясность нашей позиции очевидна: разбавленное изрядной долей эмпатии, рациональное мышление однозначно определяет каждого участника как способного принимать собственные решения касаемо экспериментов, поражающих по своей масштабности и грандиозности.'),
       (gen_random_uuid(),
        'Повседневная практика показывает, что граница обучения кадров представляет собой интересный эксперимент проверки инновационных методов управления процессами. Предварительные выводы неутешительны: существующая теория играет определяющее значение для новых принципов формирования материально-технической и кадровой базы! Разнообразный и богатый опыт говорит нам, что дальнейшее развитие различных форм деятельности, а также свежий взгляд на привычные вещи — безусловно открывает новые горизонты для своевременного выполнения сверхзадачи.'),
       (gen_random_uuid(),
        'Также как новая модель организационной деятельности создаёт предпосылки для экспериментов, поражающих по своей масштабности и грандиозности. Таким образом, понимание сути ресурсосберегающих технологий способствует повышению качества системы массового участия. Значимость этих проблем настолько очевидна, что высокотехнологичная концепция общественного уклада, а также свежий взгляд на привычные вещи — безусловно открывает новые горизонты для благоприятных перспектив.');
insert into public.programming_languages(uuid, name, logo)
values (gen_random_uuid(), 'Python', 'https://profilinator.rishav.dev/skills-assets/python-original.svg'),
       (gen_random_uuid(), 'Java', 'https://profilinator.rishav.dev/skills-assets/java-original-wordmark.svg'),
       (gen_random_uuid(), 'Golang', 'https://profilinator.rishav.dev/skills-assets/go-original.svg'),
       (gen_random_uuid(), 'JavaScript', 'https://profilinator.rishav.dev/skills-assets/javascript-original.svg'),
       (gen_random_uuid(), 'TypeScript', 'https://profilinator.rishav.dev/skills-assets/typescript-original.svg'),
       (gen_random_uuid(), 'HTML5', 'https://profilinator.rishav.dev/skills-assets/html5-original-wordmark.svg'),
       (gen_random_uuid(), 'Kotlin', 'https://profilinator.rishav.dev/skills-assets/kotlinlang-icon.svg'),
       (gen_random_uuid(), 'PostgreSQL',
        'https://profilinator.rishav.dev/skills-assets/postgresql-original-wordmark.svg'),
       (gen_random_uuid(), 'CSS3', 'https://profilinator.rishav.dev/skills-assets/css3-original-wordmark.svg'),
       (gen_random_uuid(), 'C#', 'https://profilinator.rishav.dev/skills-assets/csharp-original.svg'),
       (gen_random_uuid(), 'Scala', 'https://profilinator.rishav.dev/skills-assets/scala-original-wordmark.svg'),
       (gen_random_uuid(), 'Dart', 'https://profilinator.rishav.dev/skills-assets/dartlang-icon.svg'),
       (gen_random_uuid(), 'C', 'https://profilinator.rishav.dev/skills-assets/c-original.svg'),
       (gen_random_uuid(), 'PHP', 'https://profilinator.rishav.dev/skills-assets/php-original.svg'),
       (gen_random_uuid(), 'C++', 'https://profilinator.rishav.dev/skills-assets/cplusplus-original.svg'),
       (gen_random_uuid(), 'Rust', 'https://profilinator.rishav.dev/skills-assets/rust-plain.svg'),
       (gen_random_uuid(), 'Sass', 'https://profilinator.rishav.dev/skills-assets/sass-original.svg');

insert into public.code_examples(uuid, content, programming_language_uuid)
values (gen_random_uuid(), 'def check():
    global x_btn_img, o_btn_img
    x_btns = []
    o_btns = []
    for button in buttons.items():
        button_number = button[0][0]+1+button[0][1]+button[0][0]*2
        if button[1][''image''] == x_btn_img._PhotoImage__photo.name:
            x_btns.append(button_number)
        elif button[1][''image''] == o_btn_img._PhotoImage__photo.name:
            o_btns.append(button_number)
    for win in WINS:
        if isSublist(win, x_btns):
            result = messagebox.askyesno(title=''Игра окончена'',
                                         message=''Победили крестики!\nХотите сыграть еще раз?'')
            if result == 1:
                clear(result)
            elif result == 0:
                root.quit()
        elif isSublist(win, o_btns):
            result = messagebox.askyesno(title=''Игра окончена'',
                        message=''Победили нолики!\nХотите сыграть еще раз?'')
            if result == 1:
                clear(result)
            elif result == 0:
                root.quit()', (select uuid
                               from public.programming_languages
                               where name = 'Python')),
       (gen_random_uuid(), '@Transactional
public GalaxyDto updateGalaxy(Long galaxyId, UpdateGalaxyDto galaxy) {
    Galaxy updatedGalaxy = galaxyRepository
            .findById(galaxyId)
            .orElseThrow(() -> new GalaxyNotFoundException(galaxyId));

    galaxyValidatorService.validatePutRequest(galaxyId, galaxy);

    updatedGalaxy.setGalaxyName(galaxy.getGalaxyName());
    updatedGalaxy.setGalaxyDescription(galaxy.getGalaxyDescription());

    return mapper.map(
            galaxyRepository.save(updatedGalaxy),
            GalaxyDto.class
    );
}

@Transactional
public MessageDto deleteGalaxy(Long galaxyId) {
    galaxyRepository.deleteById(galaxyId);
    return new MessageDto("Галактика " + galaxyId + " была уничтожена квазаром");
}
', (select uuid
    from public.programming_languages
    where name = 'Java')),
       (gen_random_uuid(), 'func (s *PostService) GetPostByUUID(uuid string) (getPostDto dto.GetPostDto, err error) {
	post, err := s.repo.GetPostByUUID(uuid)
	if err != nil {
		s.log.Infof(`error getting post by uuid: ''%s'' due to error: %v`, uuid, err)
		return getPostDto, err
	}

	err = copier.Copy(&getPostDto, &post)
	if err != nil {
		return getPostDto, &errors.MappingError{Message: `struct mapping error`}
	}
	return getPostDto, nil
}

func (s *PostService) GetPosts() (postsDto []dto.GetPostDto, err error) {
	posts := s.repo.GetPosts()
	err = copier.Copy(&postsDto, &posts)
	if err != nil {
		return postsDto, &errors.MappingError{Message: `struct mapping error`}
	}
	return postsDto, nil
}', (select uuid
     from public.programming_languages
     where name = 'Golang')),
       (gen_random_uuid(), 'return (
        <>
            <div className={css.typing} onClick={handleFocus} ref={parentRef}>
                <Text
                    fontSize="xxx-large"
                    display="inline-flex"
                    flexWrap="wrap"
                    justifyContent="left"
                    wordBreak="break-all"
                >
                    <Cursor
                        top={cursorRelativePositionTop}
                        left={cursorRelativePositionLeft}
                    />

                    {currentText?.map((word, wordIndex) => (
                        <Word
                            key={wordIndex}
                            wordIndex={wordIndex}
                            expectedWord={word + " "}
                            printedWord={wordIndex === currentWordIndex ? typingValue : undefined}
                            wordStatus={
                                getWordStatus({
                                    currentWordIndex,
                                    wordIndex
                                })
                            }
                        />
                    ))}
                </Text>

                <TypingField
                    value={typingValue}
                    onChange={handleChangeTypingField}
                    ref={typingFieldRef}
                    top={`${cursorRelativePositionTop}px`}
                />
            </div>
        </>

    )', (select uuid
         from public.programming_languages
         where name = 'TypeScript')),
       (gen_random_uuid(), 'const {data: comments, isFetching, isLoading} =
    useGetCommentsQuery({
        page: pageNumber
    })

useEffect(() => {
    setCommentsWithPagination(prev => {
        return [...prev, ...comments ?? []]
    })
}, [comments]);

useEffect(() => {
    if (!observerElementRef.current) return
    if (isFetching || isLoading) return

    const callback: IntersectionObserverCallback = (entries,) => {
        if (entries[0].isIntersecting && pageNumber < 10 && comments?.length !== 0) {
            console.log(''callback'', comments)
            setPageNumber(prev => prev + 1)
        }
    };

    observerRef.current = new IntersectionObserver(callback);
    observerRef.current.observe(observerElementRef.current)

    return () => observerRef.current?.disconnect()
}, [commentsWithPagination])', (select uuid
                                from public.programming_languages
                                where name = 'TypeScript')),
       (gen_random_uuid(), '<header class="header">
        <div class="wrapper">
            <div class="header_wrapper">
                <a href="/" class="header_logo-link">
                    <img src="/img/svg/Vector.svg" alt="Площадка для реализации криптостикеров" class="header_logo-link">
                </a>
                <ul class="header_list">
                    <li class="header_item">
                        <a href="#!" class="header_link">Авторы</a>
                    </li>
                    <li class="header_item">
                        <a href="#!" class="header_link">Коллекции</a>
                    </li>
                    <li class="header_item">
                        <a href="#!" class="header_link">Сервисы</a>
                    </li>
                </ul>
                <div class="header_button">
                    <button type="button" class="popup-button">Кошелёк</button>
                </div>
            </div>
        </div>
    </header>', (select uuid
                 from public.programming_languages
                 where name = 'HTML5')),
       (gen_random_uuid(), 'companion object {
    private val COMPARATOR = object : DiffUtil.ItemCallback<Favorites.Favorite>() {
        override fun areItemsTheSame(
            oldItem: Favorites.Favorite,
            newItem: Favorites.Favorite
        ): Boolean =
            oldItem.id == newItem.id

        override fun areContentsTheSame(
            oldItem: Favorites.Favorite,
            newItem: Favorites.Favorite
        ): Boolean =
            oldItem == newItem
    }
}

override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FavoriteViewHolder {
    val binding =
        FavoriteItemBinding.inflate(LayoutInflater.from(parent.context), parent, false).apply {
            this.lifecycleOwner = fragmentLifecycleOwner
        }
    return FavoriteViewHolder(binding)
}', (select uuid
     from public.programming_languages
     where name = 'Kotlin')),
       (gen_random_uuid(), 'WITH RECURSIVE r AS (
   SELECT dependency_id,child_id, parent_id, is_alternative
   FROM system_dependency
   WHERE parent_id = ?1

   UNION

   SELECT system_dependency.dependency_id, system_dependency.child_id, system_dependency.parent_id, system_dependency.is_alternative
   FROM system_dependency
      JOIN r
          ON system_dependency.child_id = r.parent_id
)

SELECT * FROM r
WHERE parent_id = ?1', (select uuid
                        from public.programming_languages
                        where name = 'PostgreSQL')),
       (gen_random_uuid(), 'public static async Task Main(string[] args)
{
    try
    {
        var services = new ServiceCollection();
        ConfigureServices(services);
        await using var provider = services.BuildServiceProvider();

        await MigrationUp(provider);

        _redditBotService = provider.GetService<IRedditBotService>();
        if (_redditBotService is null)
            throw new Exception("App error: RedditBotService not found.");

        await _redditBotService.Work();
    }
    catch (Exception e)
    {
        Logger.LogError($"App error: {e.Message}");
    }
    finally
    {
        LogManager.Shutdown();
    }
}', (select uuid
     from public.programming_languages
     where name = 'C#')),
       (gen_random_uuid(), '@import ''@app/styles/variables.scss'';

.card {
    display: flex;
    flex-direction: column;
    background: $black;
    min-width: 118px;
    border-radius: 8px;
    transition: 0.3s;
    outline: 1px solid transparent;

    &--size-large {
        padding: 24px 24px;
    }

    &--size-medium {
        padding: 16px 24px;
    }

    &--size-small {
        padding: 8px 16px;
    }

    &--glow {
        &:hover {
            outline: 1px solid $primary-500;
        }
    }
}', (select uuid
     from public.programming_languages
     where name = 'Sass')),
       (gen_random_uuid(), 'void show_box(GtkWidget *window) {
    GtkWidget *vbox;
    char *names[] = {_U("Проснулся"), _U("Зорядка"), _U("Покакать"), _U("Встать с кроватки")};
    vbox = gtk_vbox_new(TRUE, 5);
    for (int i = 0; i < 4; i++) {
        GtkWidget *button = gtk_button_new_with_label(names[i]);
        gtk_box_pack_start(GTK_BOX(vbox), button, TRUE, TRUE, 10);
        g_signal_connect_swapped(G_OBJECT(button), "clicked", G_CALLBACK(gtk_widget_destroy), (gpointer)button);
    }
    gtk_container_add(GTK_CONTAINER(window), vbox);
}

int main (int argc, char *argv[]) {
  GtkWidget *win = NULL;
  gtk_init (&argc, &argv);
  win = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(win), _U("ХОЧУ КУШАТЬ"));
  gtk_window_set_default_size(GTK_WINDOW(win), 500, 500);
  g_signal_connect (win, "destroy", gtk_main_quit, NULL);
  show_box(win);
  gtk_widget_show_all (win);
  gtk_main ();
  return 0;
}', (select uuid
     from public.programming_languages
     where name = 'C')),
       (gen_random_uuid(), 'public function decline(Request $request) {
        $request->validate([
            ''id'' => ''required'',
            ''declineReason'' => ''required''
        ]);

        Application::where(''id'', $request->id)->update([''status'' => ''declined'', ''decline_reason'' => $request->declineReason]);
        return response()->json([''success'' => $request->declineReason], 200);
    }

    public function accept(Request $request) {
        $request->validate([
            ''id'' => ''required''
        ]);

        Application::where(''id'', $request->id)->update([''status'' => ''accepted'']);
        return response()->json([''success'' => ''успех''], 200);
    }', (select uuid
         from public.programming_languages
         where name = 'PHP')),
       (gen_random_uuid(), 'const inputForm = document.getElementById(''formInput'')
const buttonConfirmForm = document.getElementById(''create'')
const listForm = document.getElementById(''list'')
const notes = []

function render() {
    listForm.innerHTML=""
    if(notes==0){
        listForm.innerHTML=''<p>Нет элементов</p>''
    }
    for(let i = 0;i<notes.length;i++){
        listForm.insertAdjacentHTML(''beforeend'',getNoteTemplate(notes[i],i))
    }
}

render()

buttonConfirmForm.onclick = () => {
    if (inputForm.value.length === 0) {
        return
    }
    const newNote = {
        title: inputForm.value,
        complited: false
    }
    listForm.insertAdjacentHTML(''beforeend'', getNoteTemplate(newNote))
    notes.push(newNote)
    render()
    inputForm.value = ''''

}', (select uuid
     from public.programming_languages
     where name = 'JavaScript')),
       (gen_random_uuid(), 'const NewsItem = ({ item }) => {
  return (
    <div className={styles.newsItemBox}>
      <div
        className={styles.imgNews}
        style={{ backgroundImage: `url(${item.image})` }}
      />
      <div className={styles.articleNewsItem}>
        <h3 className={styles.titleNews}>{item.title}</h3>
        <p className={styles.descNews}>{formatTimeAgo(item.published)}</p>
      </div>
    </div>
  );
};

export default NewsItem;', (select uuid
                            from public.programming_languages
                            where name = 'JavaScript')),
       (gen_random_uuid(), '* {
    padding: 0pt;
    margin: 0pt;
    box-sizing: border-box;
}

.to-do-list {
    display: flex;
    align-items: center;
    width: 100%;
}

.container {
    margin: 0 auto;
    max-width: 450px;
    width: 100%;
}', (select uuid
     from public.programming_languages
     where name = 'CSS3')),
       (gen_random_uuid(), '#app {
    margin: 20px 10px;
    min-height: 100vh;
    width: 100%;
}

.p {
    width: 100%;
    height: 3em;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: 600;
    color: #fff;
}

input {
     width: 50%;
     padding: 10px 25px;
     border: none;
     background: rgba(250, 250, 250, 0.5);
     text-align: center;
     border-radius: 10px;
     box-shadow: 0 0 20px rgb(72, 72, 72, 0.8);
     text-transform: uppercase;
     color: #fff;
     font-weight: 900;
     letter-spacing: 2px;
}', (select uuid
     from public.programming_languages
     where name = 'CSS3')),
       (gen_random_uuid(), 'body {
    display: flex;
    flex-direction: column;
    font-family: basier-circle,sans-serif;
    min-height: 100vh;
}

button {
    font-size: 18px;
    background-color: #d9d9d9;
    border:3px solid #000000;
    padding: 5px;
    border-radius: 4px;
}

.screen-nav-wrapper {
    width: 411px;
    overflow: hidden;
    box-shadow: 2px 5px 7px 3px rgba(0, 0, 0, 0.675);

}', (select uuid
     from public.programming_languages
     where name = 'CSS3')),
       (gen_random_uuid(), '#include "sbscheduler.hpp"
#include <QTimer>

QDateTime scheduler::cfglmd;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    sb::ldtltr();
    scheduler s;

    QTimer::singleShot(0, &s,
#if QT_VERSION < QT_VERSION_CHECK(5, 4, 0)
        SLOT(main())
#else
        &scheduler::main
#endif
        );

    uchar rv(a.exec());
    return rv;
}', (select uuid
     from public.programming_languages
     where name = 'C++'));
